package com.kh.ogg.review.model.service;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import com.kh.ogg.review.model.vo.Film;

@Service
public class FilmService {

	private static String clientId = "Vhxz0BJwK3UchDgb2mDS";
	private static String clientSecret = "_2S7a6mTPf";
	URL url;
	URLConnection urlConn;
	XmlPullParserFactory factory;
	XmlPullParser parser;
	
	public void con(String keyword, int display, int start) {
		try {
			url = new URL("https://openapi.naver.com/v1/search/movie.xml?query=" 
							+ URLEncoder.encode(keyword, "UTF-8")
							+ (display != 0 ? "&display=" + display : "") 
							+ (start != 0 ? "&start=" + start : ""));
			urlConn = url.openConnection();
			urlConn.setRequestProperty("X-Naver-Client-Id", clientId);
			urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			
			factory = XmlPullParserFactory.newInstance();
			parser = factory.newPullParser();
			
			parser.setInput(new InputStreamReader(urlConn.getInputStream()));
			
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		}
	}
	
	public List<Film> searchFilm(String keyword, int display, int start){
		List<Film> list = null;
		con(keyword, display, start);
		int eventType;
		try {
			eventType = parser.getEventType();
			Film film = null;
			while (eventType != XmlPullParser.END_DOCUMENT) {
				switch (eventType) {
				case XmlPullParser.END_DOCUMENT:
					break;
				case XmlPullParser.START_DOCUMENT:
					list = new ArrayList<Film>();
					break;
				case XmlPullParser.END_TAG: {
					String tag = parser.getName();
					if (tag.equals("item")) {
						list.add(film);
						film = null;
					}
				}
				case XmlPullParser.START_TAG: {
					String tag = parser.getName();
					if ("item".equals(tag)) {
						film = new Film();
						break;
					} else if ("title".equals(tag)) {
						if (film != null)
							film.setTitle(parser.nextText());
						break;
					} else if ("link".equals(tag)) {
						if (film != null)
							film.setLink(parser.nextText());
						break;
					} else if ("image".equals(tag)) {
						if (film != null) {
							film.setImage(parser.nextText());
						}
						break;
					} else if ("subtitle".equals(tag)) {
						if (film != null)
							film.setSubtitle(parser.nextText());
						break;
					} else if ("pubDate".equals(tag)) {
						if (film != null)
							film.setPubDate(parser.nextText());
						break;
					} else if ("director".equals(tag)) {
						if (film != null)
							film.setDirector(parser.nextText());
						break;
					} else if ("actor".equals(tag)) {
						if (film != null)
							film.setActor(parser.nextText());
						break;
					} else if ("userRating".equals(tag)) {
						if (film != null) {
							film.setUserRating(parser.nextText());
						}
						break;
					}
				}
				}
				eventType = parser.next();
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}
}

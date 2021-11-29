import 'package:equatable/equatable.dart';
//import 'package:flutter/foundation.dart';
import 'package:news_app_wit_bloc/models/article_model.dart';


class NewsStates extends Equatable{
  const NewsStates();

  @override
  // TODO: implement props
  List<Object?> get props => [];


}

class NewsInitState extends NewsStates{}

class NewsLoadingState extends NewsStates{}

class NewsLoadedState extends NewsStates{
  final List<ArticleModel> articleList;

  NewsLoadedState({required this.articleList});
}

class NewsErrorState extends NewsStates{
  final String errorMessage;
  NewsErrorState ({required this.errorMessage});
}


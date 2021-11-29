import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app_wit_bloc/models/article_model.dart';


class NewsState extends Equatable{
  const NewsState();

  @override
  // TODO: implement props
  List<Object?> get props => [];


}

class NewsInitState extends NewsState{}

class NewLoadingState extends NewsState{}

class NewsLoadedState extends NewsState{
  final List<ArticleModel> articleList;
  NewsLoadedState({required this.articleList});
}

class NewsErrorState extends NewsState{
  final String errorNessage;
  NewsErrorState ({required this.errorNessage})
}


part 'consts.part.dart';

const accessTokenKey = 'access_token';
const usernameKey = 'username';
const anilistGraphqlEndpoint = 'https://graphql.anilist.co';
const anilistLoginUrl = 'https://anilist.co/api/v2/oauth/authorize?client_id=$anilistClientId&redirect_uri=$anilistRedirectUri&response_type=code';
const anilistRedirectUri = 'https://anilist.co/api/v2/oauth/pin';

/// Rember to define client secrets of the Anilist API in const.part.dart .
// const anilistClientSecret = 'AAAAAAAAAAAAAAAAAAAAAAAA';
// const anilistClientId = 0000;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/Constants/size_config.dart';


class AppConstants {
  AppConstants._();

  static final kWelcome = Text('welcome',
    style: TextStyle(
      color: Colors.black,
      fontSize: 6.75 * SizeConfig.textMultiplier,
    ),
  );
}

const kGender = Text('GENDER',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  ),);

const kGenderBlack = Text('GENDER',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kAge = Text('AGE',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  ),);

const kEveningFilter = Text('Evening',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const k5pmFilter = Text('5pm-10pm',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kSelectClubFilter = Text('Select Club',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: const Color(0XFF0F33B8)
  ),);

const kPreferTime = Text("Prefer Time",
  style: TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.w700
  ),);

const kClubFilter = Text('CLUB',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  ),);

const kAfternoonFilter = Text('Afternoon',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const k12noonFilter = Text('12noon-5pm',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kAgeBand = Text('10 - 65',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: const Color(0XFF0F33B8),
  ),);

const kAnytimeFilter = Text('Anytime',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kProfile = Text("Profile",
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  ),);

const kVitulDouble = Text('VITUL\'S DOUBLES',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kEveningDouble = Text('EVENING DOUBLES\'S SQUASH',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kEveningTime = Text('14 FEBRUARY  |  02:00 PM - 03:00 PM',
  style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  ),);

const kEveningGround = Text('Vialyat Ground, Delhi',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.black
  ),);

const kValidateTimeout = Text('Validate Timeout',
  style: TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontSize: 12.0,
  ),);

const kEveningGame = Text('AMATEUR',
  style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.green,
  ),);

const kMatchHistory = Text("Match History (2)",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  ),);

const kShowAll = Text("Show All",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  ),);

const kVitulGreen = Text('Vitul',
  style: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.green
  ),);

const kNewSquash = Text('New Match - Squash',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kMatchingSquash = Text('Matching - Squash',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);



const kVilayat = Text('Vialyat Ground, Delhi',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kHostedByBlack = Text('HOSTED BY',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black
  ),);

const kVitulTime = Text('12 FEBRUARY  |  02:00 PM - 03:00 PM',
  style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  ),);



const kSagar99 = Text('Sagar_99',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 28.0,
      color: Colors.white
  ),);

const kAddImage = Text("Add Image",
  style: TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  ),);

const kSagar = Text("SAGAR",
  style: TextStyle(fontSize: 20.0, color: Colors.black,
      fontWeight: FontWeight.w600),);

const k20Y = Text("20 Y Amateur",
  style: TextStyle(fontSize: 15.0, color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w500),);

const kPointSystem = Text("Point System",
  style: TextStyle(fontSize: 15.0, color: const Color(0XFF0F33B8),
      fontWeight: FontWeight.w500),);

const kMaleHome = Text('Male',
  textScaleFactor: 1.5,);

const kFemaleHome = Text('Female',
  textScaleFactor: 1.5,);

const k6amFilter = Text('6am-12noon',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kMorningFilter = Text('Morning',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kTimeFilter = Text('TIME',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  ),);

const kAllPlayersFilters = Text('All Players',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const k10Yrs = Text('10 YEARS',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const k65Yrs = Text('65 YEARS',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.grey
  ),);

const kMale = Text('Male',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kFemale = Text('Female',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kSafdarJung = Text("B-2/8 Safdarjung Enclave, New Delhi.",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  ),);

const kFilter = Text('Filters',
  style: TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24.0,
    color: const Color(0XFF0F33B8),
  ),);

const kLctn = Text('LOCATION',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  ),);

const kApp = Text('APP - ',
  style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 18.0
  ),);

const kConnection = Text('Connections',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24.0
  ),);

const kPlayer = Text('PLAYER -',
  style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 18.0
  ),);

const kPlayers = Text('PLAYERS ',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kDrawerMatches = Text('MATCHES',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
  ),);

const kDrawerGroups = Text('GROUPS',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
  ),);

const kDrawerLeadership = Text('LEADERSHIP',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
  ),);

const kDrawerPastTournaments = Text('PAST TOURNAMENTS',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
  ),);

const kDrawerCoachFinder = Text('COACH FINDER',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black
  ),);

const kDrawerFAQ = Text('FAQ\'s',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.grey
  ),);

const kDrawerTerms = Text('Terms & Conditions',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.grey
  ),);

const kDrawerRefer = Text('Refer a Friend',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.grey
  ),);

const kNticePreference = Text('NOTIFICATION PREFERENCES',
  style: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 18.0
  ),);

const kDemoData = Text('Demo data',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kDemoDataSmall = Text('Demo data',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kAnshul = Text('Anshul Srivastava',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kYash = Text('Yash Godiyal',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kConnectionRequests = Text('Connection Requests',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kSagarChaudhary = Text('Sagar Chaudhary',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kSemiPro = Text('Squash . Semi Pro',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: const Color(0XFF0F33B8)
  ),);

const kSemiProSmall = Text('Squash . Semi Pro',
  style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: const Color(0XFF0F33B8)
  ),);

const kVikram = Text('VIKRAMJEET SINGH',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kVishakha = Text('VISHAKHA SINGH',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);


const kRohit = Text('ROHIT KUMAR',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kConnect = Text('CONNECT',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12.0,
  ),);

const kChatNow = Text('Chat now',
  style: TextStyle(
    color: Colors.white,
    fontSize: 13.0,
  ),);

const kAccept = Text('Accept',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12.0,
  ),);

const kDecline = Text('Decline',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12.0,
  ),);

const kPending = Text('Pending',
  style: TextStyle(
    color: Colors.black,
    fontSize: 12.0,
  ),);

const kLocation = Text('LOCATION',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const kLocationSmall = Text('LOCATION',
  style: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const kAcceptOrDecline = Text('Accept or Decline Requests',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const kPlayArena = Text('Play Arena, Bangluru',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.black
  ),);

const kPlay = Text("LET\'S PLAY",
  style: TextStyle(
    color: Colors.white,
    letterSpacing: 2,
    fontSize: 22.0,
    fontWeight: FontWeight.w900,
  ),);


const k1 = Text('1',
  style: TextStyle(
    color: const Color(0XFFFFD700),
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const k2 = Text('2',
  style: TextStyle(
    color: const Color(0XFFA7A7AD),
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const k3 = Text('3',
  style: TextStyle(
    color: const Color(0XFF804A00),
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const k4 = Text('4',
  style: TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const k5 = Text('5',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const k6 = Text('6',
  style: TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w800,
  ),);

const kMyRankings = Text("MY RANKING",
  style: TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  ),);

const kAddGame = Text("ADD GAME",
  style: TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  ),);

const kEditGame = Text("EDIT GAME",
  style: TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  ),);

const LeaderBoardStatement1 = Text('You need to win atleast a match to get ranked',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w700,
    fontSize: 17.0,
  ),);


const kPlayArenaTournament = Text('Play Arena - Bengaluru',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const k14Jan = Text('14 JANUARY | 02:00 PM ONWARDS',
  style: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.black
  ),);

const kBeginner = Text('BEGINNER',
  style: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),);

const kProfile07 = Text('07',
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
  ),);

const kProfile53 = Text('53',
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18.0),);

const kRohan = Text('ROHAN\'S DOUBLES' ,
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kDoubleSquash = Text('Double - Squash' ,
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kMatchSquash = Text('Match - Squash' ,
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kVikramVsVitul = Text('VIKRAMJEET SINGH VS VITUL - Badminton' ,
  style: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kVaibhavVsNikki = Text('Alden Vaibhav Vs Nikki - Badminton' ,
  style: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kProfileConnections = Text('Connections',
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18.0),);

const kProfileMatchesPlayed = Text('Matches Played',
  style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 18.0),);

const kSagarProfile = Text('SAGAR JAWLA',
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontSize: 25.0,
  ),);

const kBadalProfile = Text('BADAL THUKRAL',
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontSize: 25.0,
  ),);

const kSagar21Y = Text('21 Y',
  style: TextStyle(
    color: Colors.grey,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  ),);

const kSagarAmateur = Text('AMATEUR',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  ),);

const kFoolowedBy = Text('Followed by _gourav, Vikram, _Nikhil + 7 more',
  style: TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  ),);

const kBadalPro = Text('PRO',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  ),);

const kSagarJawla = Text('SAGAR JAWLA',
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 17.0,
  ),);

const kVikramjeetSingh = Text('VikramJeet Singh',
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 15.5,
  ),);

const kRoshini = Text('ROSHINI',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),);

const kVitul1 = Text('VITUL',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),);

const kGaurav = Text('GAURAV',
  style: TextStyle(
    fontFamily: "WorkSansSemiBold",
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),);

const kFollow = Text('Follow',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      color: Colors.white
  ),);

const kLeaderBoardText = Text('LEADERBOARD',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 22.0,
      color: Colors.white
  ),);


const kGroupRank = Text("GROUP RANK",
  style: TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  ),);

const kRagini = Text('RAGINI',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 17.0,
  ),);

const kAmateurWhite = Text('Amateur',
  style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  ),);

const kAmateurLeaderBoard = Text('Amateur',
  style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.w700,
    color: const Color(0XFF0F33B8),
  ),);

const kGames = Text('GAMES',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  ),);

const k0 = Text('0',
  style: TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  ),);

const kWins = Text('WINS',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  ),);

const kLoss = Text('LOSES',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  ),);

const kWinnings = Text('WINNING%',
  style: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  ),);

const kWinner = Text('WINNER',
  style: TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  ),);

const kFinalScore = Text('FINAL SCORE:0-3',
  style: TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ),);

const k100 = Text('100%',
  style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: const Color(0XFF0F33B8),
  ),);

const k0100 = Text('100%',
  style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  ),);


const kUpdateProfile = Text('Update Profile',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 26.0
  ),);

const kApplyFilters = Text("Apply Filters",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  ),
);

const kGroupInfo = Text("Group Info",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  ),
);

const kCreateGroup = Text("Create Group",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w400,
  ),
);

const kAllPlayers = Text("All Players",
  style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  ),);

const k10to65 = Text("10 - 65",
  style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  ),);

const kAnytime = Text("Anytime",
  style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  ),);

const kGoToHomepage = Text('GO TO HOMEPAGE',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 20.0
  ),);

const kMyMatch = Text('MY MATCHES',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.black
  ),);

const kScoringReq = Text('SCORING REQUEST',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.black
  ),);

const kMatchReq = Text('MATCH REQUEST',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.black
  ),);

const kMatch = Text('Match - SQUASH',
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kPlayathon = Text('PLAYATHON - ONE' ,
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const k12Jan = Text('12 January | 02:00 PM - 03:00 PM',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const kVenue = Text('VENUE',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black
  ),);

const kPlayer1 = Text('PLAYERS (1)',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kBangalore = Text('Play Arena - Bengaluru',
  style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kHostedBy = Text('HOSTED BY',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.grey
  ),);

const kPlayer2 = Text('PLAYERS (2)',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kPlayer3 = Text('PLAYERS (3)',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
  ),);

const kVITUL = Text('VITUL',
  style: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.grey
  ),);

const kAdv = Text('ADVANCED',
  style: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: const Color(0XFF0F33B8),
  ),);

const kAdvGreen = Text('ADVANCED',
  style: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Colors.green),);

const kMyProfile = Text('My Profile',
  textAlign: TextAlign.center,
  style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24.0
  ),);

const kMatches = Text('MATCHES',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 24.0
  ),);


const kScoring_BestOfThree = Text("SCORING (BEST OF THREE)",
   style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20.0,
        color: const Color(0XFF0F33B8),
   ),
);

const kJoinMatch = Text('JOIN MATCH',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      color: Colors.white,
      fontSize: 20.0
  ),);

const kJoinMatchButton = Text('JOIN MATCH',
  style: TextStyle(
      fontWeight: FontWeight.w700,
      color: const Color(0XFF0F33B8),
      fontSize: 15.0
  ),);

const kMatchScoringText3 = Text('SCORES HAVE BEEN SENT',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 17.0,
  ),);

const kMatchScoringText4 = Text('VITUL',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 17.0,
  ),);

const kMatchScoringText5 = Text('FOR CONFIRMATION_',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 17.0,
  ),);

const kMatchScoringText6 = Text('Once confirmed, score',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
  ),);

const kMatchScoringText7 = Text('will be update for the match',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
  ),);

const kAmateurBlack = Text('AMATEUR',
  style: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),);

const kVikramProfile = Text('VIKRAMJEET SINGH',
  style: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kCreateTournament = Text("CREATE TOURNAMENT",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  ),
);

const kCancel = Text("CANCEL",
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.blueGrey
  ),);

const kNext_popUpScreen3 = Text("NEXT",
  style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: Colors.blueGrey
  ),);


const kBestOfFive = Text('Best of Five (5)',
  style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey
  ),);

const kCustomEntry = Text('Custom Entry',
  style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.blueGrey
  ),);

const kSingleGame = Text('Single Game',
  style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kSelectGameType = Text('SELECT GAME TYPE',
  style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
  ),);

const kCreateGrp = Text("CREATE GROUP",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  ),
);

const kCreateMtch = Text("CREATE MATCH",
  style: TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w500,
  ),
);

const kAmateur = Text('Amateur',
  style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kSquash = Text('Squash',
  style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kSquashProfile = Text('Squash',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  ),);

const kTimeProfile = Text("TIME",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  ),);

const kAgeBlack = Text("AGE",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  ),);

const kMyPrefences = Text("MY PREFERENCES",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  ),);

const kSquash5 = Text('5',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  ),);

const kSquash53 = Text('53',
  style: TextStyle(
    color: const Color(0XFF0F33B8),
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  ),);

const kSQUASH = Text('SQUASH',
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: 22.0,
  ),);

const kSingles = Text('SINGLES',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kDoubles = Text('|       DOUBLES       |',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kTournaments = Text('TOURNAMENTS',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kChat = Text('CHAT',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kLeaderBoard = Text('|       LEADERBOARD       |',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);

const kDetails = Text('DETAILS',
  style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.white
  ),);


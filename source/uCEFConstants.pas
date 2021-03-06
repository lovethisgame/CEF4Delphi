// ************************************************************************
// ***************************** CEF4Delphi *******************************
// ************************************************************************
//
// CEF4Delphi is based on DCEF3 which uses CEF3 to embed a chromium-based
// browser in Delphi applications.
//
// The original license of DCEF3 still applies to CEF4Delphi.
//
// For more information about CEF4Delphi visit :
//         https://www.briskbard.com/index.php?lang=en&pageid=cef
//
//        Copyright � 2017 Salvador D�az Fau. All rights reserved.
//
// ************************************************************************
// ************ vvvv Original license and comments below vvvv *************
// ************************************************************************
(*
 *                       Delphi Chromium Embedded 3
 *
 * Usage allowed under the restrictions of the Lesser GNU General Public License
 * or alternatively the restrictions of the Mozilla Public License 1.1
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * Unit owner : Henri Gourvest <hgourvest@gmail.com>
 * Web site   : http://www.progdigy.com
 * Repository : http://code.google.com/p/delphichromiumembedded/
 * Group      : http://groups.google.com/group/delphichromiumembedded
 *
 * Embarcadero Technologies, Inc is not permitted to use or redistribute
 * this source code without explicit permission.
 *
 *)

unit uCEFConstants;

{$IFNDEF CPUX64}
  {$ALIGN ON}
  {$MINENUMSIZE 4}
{$ENDIF}

interface

uses
  Winapi.Messages;

const
  // /include/internal/cef_types.h (cef_errorcode_t)
  ERR_NONE                             = 0;
  ERR_FAILED                           = -2;
  ERR_ABORTED                          = -3;
  ERR_INVALID_ARGUMENT                 = -4;
  ERR_INVALID_HANDLE                   = -5;
  ERR_FILE_NOT_FOUND                   = -6;
  ERR_TIMED_OUT                        = -7;
  ERR_FILE_TOO_BIG                     = -8;
  ERR_UNEXPECTED                       = -9;
  ERR_ACCESS_DENIED                    = -10;
  ERR_NOT_IMPLEMENTED                  = -11;
  ERR_CONNECTION_CLOSED                = -100;
  ERR_CONNECTION_RESET                 = -101;
  ERR_CONNECTION_REFUSED               = -102;
  ERR_CONNECTION_ABORTED               = -103;
  ERR_CONNECTION_FAILED                = -104;
  ERR_NAME_NOT_RESOLVED                = -105;
  ERR_INTERNET_DISCONNECTED            = -106;
  ERR_SSL_PROTOCOL_ERROR               = -107;
  ERR_ADDRESS_INVALID                  = -108;
  ERR_ADDRESS_UNREACHABLE              = -109;
  ERR_SSL_CLIENT_AUTH_CERT_NEEDED      = -110;
  ERR_TUNNEL_CONNECTION_FAILED         = -111;
  ERR_NO_SSL_VERSIONS_ENABLED          = -112;
  ERR_SSL_VERSION_OR_CIPHER_MISMATCH   = -113;
  ERR_SSL_RENEGOTIATION_REQUESTED      = -114;
  ERR_CERT_COMMON_NAME_INVALID         = -200;
  ERR_CERT_BEGIN                       = ERR_CERT_COMMON_NAME_INVALID;
  ERR_CERT_DATE_INVALID                = -201;
  ERR_CERT_AUTHORITY_INVALID           = -202;
  ERR_CERT_CONTAINS_ERRORS             = -203;
  ERR_CERT_NO_REVOCATION_MECHANISM     = -204;
  ERR_CERT_UNABLE_TO_CHECK_REVOCATION  = -205;
  ERR_CERT_REVOKED                     = -206;
  ERR_CERT_INVALID                     = -207;
  ERR_CERT_WEAK_SIGNATURE_ALGORITHM    = -208;
  ERR_CERT_NON_UNIQUE_NAME             = -210;
  ERR_CERT_WEAK_KEY                    = -211;
  ERR_CERT_NAME_CONSTRAINT_VIOLATION   = -212;
  ERR_CERT_VALIDITY_TOO_LONG           = -213;
  ERR_CERT_END                         = ERR_CERT_VALIDITY_TOO_LONG;
  ERR_INVALID_URL                      = -300;
  ERR_DISALLOWED_URL_SCHEME            = -301;
  ERR_UNKNOWN_URL_SCHEME               = -302;
  ERR_TOO_MANY_REDIRECTS               = -310;
  ERR_UNSAFE_REDIRECT                  = -311;
  ERR_UNSAFE_PORT                      = -312;
  ERR_INVALID_RESPONSE                 = -320;
  ERR_INVALID_CHUNKED_ENCODING         = -321;
  ERR_METHOD_NOT_SUPPORTED             = -322;
  ERR_UNEXPECTED_PROXY_AUTH            = -323;
  ERR_EMPTY_RESPONSE                   = -324;
  ERR_RESPONSE_HEADERS_TOO_BIG         = -325;
  ERR_CACHE_MISS                       = -400;
  ERR_INSECURE_RESPONSE                = -501;

  // /include/internal/cef_types.h (cef_cert_status_t)
  CERT_STATUS_NONE                        = 0;
  CERT_STATUS_COMMON_NAME_INVALID         = 1 shl 0;
  CERT_STATUS_DATE_INVALID                = 1 shl 1;
  CERT_STATUS_AUTHORITY_INVALID           = 1 shl 2;
  CERT_STATUS_NO_REVOCATION_MECHANISM     = 1 shl 4;
  CERT_STATUS_UNABLE_TO_CHECK_REVOCATION  = 1 shl 5;
  CERT_STATUS_REVOKED                     = 1 shl 6;
  CERT_STATUS_INVALID                     = 1 shl 7;
  CERT_STATUS_WEAK_SIGNATURE_ALGORITHM    = 1 shl 8;
  CERT_STATUS_NON_UNIQUE_NAME             = 1 shl 10;
  CERT_STATUS_WEAK_KEY                    = 1 shl 11;
  CERT_STATUS_PINNED_KEY_MISSING          = 1 shl 13;
  CERT_STATUS_NAME_CONSTRAINT_VIOLATION   = 1 shl 14;
  CERT_STATUS_VALIDITY_TOO_LONG           = 1 shl 15;
  CERT_STATUS_IS_EV                       = 1 shl 16;
  CERT_STATUS_REV_CHECKING_ENABLED        = 1 shl 17;
  CERT_STATUS_SHA1_SIGNATURE_PRESENT      = 1 shl 19;
  CERT_STATUS_CT_COMPLIANCE_FAILED        = 1 shl 20;

  CERT_STATUS_FIRST_ERROR = CERT_STATUS_COMMON_NAME_INVALID;
  CERT_STATUS_LAST_ERROR  = CERT_STATUS_VALIDITY_TOO_LONG;


  // /include/internal/cef_types.h (cef_v8_propertyattribute_t)
  V8_PROPERTY_ATTRIBUTE_NONE = [];

  // /include/internal/cef_types.h (cef_transition_type_t)
  TT_LINK                 = 0;
  TT_EXPLICIT             = 1;
  TT_AUTO_SUBFRAME        = 3;
  TT_MANUAL_SUBFRAME      = 4;
  TT_FORM_SUBMIT          = 7;
  TT_RELOAD               = 8;
  TT_SOURCE_MASK          = $FF;
  TT_BLOCKED_FLAG         = $00800000;
  TT_FORWARD_BACK_FLAG    = $01000000;
  TT_CHAIN_START_FLAG     = $10000000;
  TT_CHAIN_END_FLAG       = $20000000;
  TT_CLIENT_REDIRECT_FLAG = $40000000;
  TT_SERVER_REDIRECT_FLAG = $80000000;
  TT_IS_REDIRECT_MASK     = $C0000000;
  TT_QUALIFIER_MASK       = $FFFFFF00;

  // /include/internal/cef_types.h (cef_dom_event_category_t)
  DOM_EVENT_CATEGORY_UNKNOWN                 = $0;
  DOM_EVENT_CATEGORY_UI                      = $1;
  DOM_EVENT_CATEGORY_MOUSE                   = $2;
  DOM_EVENT_CATEGORY_MUTATION                = $4;
  DOM_EVENT_CATEGORY_KEYBOARD                = $8;
  DOM_EVENT_CATEGORY_TEXT                    = $10;
  DOM_EVENT_CATEGORY_COMPOSITION             = $20;
  DOM_EVENT_CATEGORY_DRAG                    = $40;
  DOM_EVENT_CATEGORY_CLIPBOARD               = $80;
  DOM_EVENT_CATEGORY_MESSAGE                 = $100;
  DOM_EVENT_CATEGORY_WHEEL                   = $200;
  DOM_EVENT_CATEGORY_BEFORE_TEXT_INSERTED    = $400;
  DOM_EVENT_CATEGORY_OVERFLOW                = $800;
  DOM_EVENT_CATEGORY_PAGE_TRANSITION         = $1000;
  DOM_EVENT_CATEGORY_POPSTATE                = $2000;
  DOM_EVENT_CATEGORY_PROGRESS                = $4000;
  DOM_EVENT_CATEGORY_XMLHTTPREQUEST_PROGRESS = $8000;

  // /include/internal/cef_types.h (cef_file_dialog_mode_t)
  FILE_DIALOG_TYPE_MASK            = $FF;
  FILE_DIALOG_OVERWRITEPROMPT_FLAG = $01000000;
  FILE_DIALOG_HIDEREADONLY_FLAG    = $02000000;

  // /include/internal/cef_types.h (cef_uri_unescape_rule_t)
  UU_NONE                                     = 0;
  UU_NORMAL                                   = 1 shl 0;
  UU_SPACES                                   = 1 shl 1;
  UU_PATH_SEPARATORS                          = 1 shl 2;
  UU_URL_SPECIAL_CHARS_EXCEPT_PATH_SEPARATORS = 1 shl 3;
  UU_SPOOFING_AND_CONTROL_CHARS               = 1 shl 4;
  UU_REPLACE_PLUS_WITH_SPACE                  = 1 shl 5;

  // /include/internal/cef_types.h (cef_menu_id_t)
  MENU_ID_BACK                       = 100;
  MENU_ID_FORWARD                    = 101;
  MENU_ID_RELOAD                     = 102;
  MENU_ID_RELOAD_NOCACHE             = 103;
  MENU_ID_STOPLOAD                   = 104;
  MENU_ID_UNDO                       = 110;
  MENU_ID_REDO                       = 111;
  MENU_ID_CUT                        = 112;
  MENU_ID_COPY                       = 113;
  MENU_ID_PASTE                      = 114;
  MENU_ID_DELETE                     = 115;
  MENU_ID_SELECT_ALL                 = 116;
  MENU_ID_FIND                       = 130;
  MENU_ID_PRINT                      = 131;
  MENU_ID_VIEW_SOURCE                = 132;
  MENU_ID_SPELLCHECK_SUGGESTION_0    = 200;
  MENU_ID_SPELLCHECK_SUGGESTION_1    = 201;
  MENU_ID_SPELLCHECK_SUGGESTION_2    = 202;
  MENU_ID_SPELLCHECK_SUGGESTION_3    = 203;
  MENU_ID_SPELLCHECK_SUGGESTION_4    = 204;
  MENU_ID_SPELLCHECK_SUGGESTION_LAST = 204;
  MENU_ID_NO_SPELLING_SUGGESTIONS    = 205;
  MENU_ID_ADD_TO_DICTIONARY          = 206;
  MENU_ID_CUSTOM_FIRST               = 220;
  MENU_ID_CUSTOM_LAST                = 250;
  MENU_ID_USER_FIRST                 = 26500;
  MENU_ID_USER_LAST                  = 28500;

  // /include/internal/cef_types.h (cef_ssl_version_t)
  SSL_CONNECTION_VERSION_UNKNOWN = 0;
  SSL_CONNECTION_VERSION_SSL2    = 1;
  SSL_CONNECTION_VERSION_SSL3    = 2;
  SSL_CONNECTION_VERSION_TLS1    = 3;
  SSL_CONNECTION_VERSION_TLS1_1  = 4;
  SSL_CONNECTION_VERSION_TLS1_2  = 5;
  SSL_CONNECTION_VERSION_QUIC    = 7;

//******************************************************
//****************** OTHER CONSTANTS *******************
//******************************************************

  DEVTOOLS_WINDOWNAME = 'DevTools';

  CEF_PROXYTYPE_DIRECT        = 0;
  CEF_PROXYTYPE_AUTODETECT    = 1;
  CEF_PROXYTYPE_SYSTEM        = 2;
  CEF_PROXYTYPE_FIXED_SERVERS = 3;
  CEF_PROXYTYPE_PAC_SCRIPT    = 4;

  CEF_CONTENT_SETTING_DEFAULT       = 0;
  CEF_CONTENT_SETTING_ALLOW         = 1;
  CEF_CONTENT_SETTING_BLOCK         = 2;
  CEF_CONTENT_SETTING_ASK           = 3;
  CEF_CONTENT_SETTING_SESSION_ONLY  = 4;
  CEF_CONTENT_SETTING_NUM_SETTINGS  = 5;

  ZOOM_STEP_25  = 0;
  ZOOM_STEP_33  = 1;
  ZOOM_STEP_50  = 2;
  ZOOM_STEP_67  = 3;
  ZOOM_STEP_75  = 4;
  ZOOM_STEP_90  = 5;
  ZOOM_STEP_100 = 6;
  ZOOM_STEP_110 = 7;
  ZOOM_STEP_125 = 8;
  ZOOM_STEP_150 = 9;
  ZOOM_STEP_175 = 10;
  ZOOM_STEP_200 = 11;
  ZOOM_STEP_250 = 12;
  ZOOM_STEP_300 = 13;
  ZOOM_STEP_400 = 14;
  ZOOM_STEP_500 = 15;
  ZOOM_STEP_MIN = ZOOM_STEP_25;
  ZOOM_STEP_MAX = ZOOM_STEP_500;
  ZOOM_STEP_DEF = ZOOM_STEP_100;

  CEF_PREFERENCES_AVAILABLE  = WM_APP + $A00;
  CEF_DOONCLOSE              = WM_APP + $A01;

  USER_TIMER_MINIMUM = $0000000A;
  USER_TIMER_MAXIMUM = $7FFFFFFF;

implementation

end.

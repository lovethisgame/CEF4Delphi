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

unit uCEFWaitableEvent;

{$IFNDEF CPUX64}
  {$ALIGN ON}
  {$MINENUMSIZE 4}
{$ENDIF}

interface

uses
  uCEFBase, uCEFInterfaces, uCEFTypes;

type
  TCefWaitableEventRef = class(TCefBaseRef, ICefWaitableEvent)
    protected
      procedure Reset;
      procedure Signal;
      function  IsSignaled : boolean;
      procedure Wait;
      function  TimedWait(max_ms: int64): boolean;

    public
      class function UnWrap(data: Pointer): ICefWaitableEvent;
      class function New(automatic_reset, initially_signaled : integer): ICefWaitableEvent;
  end;

implementation

uses
  uCEFMiscFunctions, uCEFLibFunctions;

procedure TCefWaitableEventRef.Reset;
begin
  PCefWaitableEvent(FData).reset(FData);
end;

procedure TCefWaitableEventRef.Signal;
begin
  PCefWaitableEvent(FData).signal(FData);
end;

function TCefWaitableEventRef.IsSignaled : boolean;
begin
  Result := (PCefWaitableEvent(FData).is_signaled(FData) <> 0);
end;

procedure TCefWaitableEventRef.Wait;
begin
  PCefWaitableEvent(FData).wait(FData);
end;

function TCefWaitableEventRef.TimedWait(max_ms: int64): boolean;
begin
  Result := (PCefWaitableEvent(FData).timed_wait(FData, max_ms) <> 0);
end;

class function TCefWaitableEventRef.UnWrap(data: Pointer): ICefWaitableEvent;
begin
  if (data <> nil) then
    Result := Create(data) as ICefWaitableEvent
   else
    Result := nil;
end;

class function TCefWaitableEventRef.New(automatic_reset, initially_signaled : integer): ICefWaitableEvent;
begin
  Result := UnWrap(cef_waitable_event_create(automatic_reset, initially_signaled));
end;

end.

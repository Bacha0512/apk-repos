.class public Lorg/abtollc/api/SipCallSession$StatusCode;
.super Ljava/lang/Object;
.source "SipCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/api/SipCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusCode"
.end annotation


# static fields
.field public static final ACCEPTED:I = 0xca

.field public static final ALTERNATIVE_SERVICE:I = 0x17c

.field public static final BAD_REQUEST:I = 0x190

.field public static final CALL_BEING_FORWARDED:I = 0xb5

.field public static final DECLINE:I = 0x25b

.field public static final FORBIDDEN:I = 0x193

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final METHOD_NOT_ALLOWED:I = 0x195

.field public static final MOVED_PERMANENTLY:I = 0x12d

.field public static final MOVED_TEMPORARILY:I = 0x12e

.field public static final MULTIPLE_CHOICES:I = 0x12c

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8

.field public static final PAYMENT_REQUIRED:I = 0x192

.field public static final PROGRESS:I = 0xb7

.field public static final QUEUED:I = 0xb6

.field public static final RINGING:I = 0xb4

.field public static final SIP_AC_AMBIGUOUS:I = 0x1e5

.field public static final SIP_SC_ADDRESS_INCOMPLETE:I = 0x1e4

.field public static final SIP_SC_BAD_EVENT:I = 0x1e9

.field public static final SIP_SC_BAD_EXTENSION:I = 0x1a4

.field public static final SIP_SC_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_SC_BUSY_EVERYWHERE:I = 0x258

.field public static final SIP_SC_BUSY_HERE:I = 0x1e6

.field public static final SIP_SC_CALL_TSX_DOES_NOT_EXIST:I = 0x1e1

.field public static final SIP_SC_DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final SIP_SC_EXTENSION_REQUIRED:I = 0x1a5

.field public static final SIP_SC_GONE:I = 0x19a

.field public static final SIP_SC_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final SIP_SC_LOOP_DETECTED:I = 0x1e2

.field public static final SIP_SC_MESSAGE_TOO_LARGE:I = 0x201

.field public static final SIP_SC_NOT_ACCEPTABLE_ANYWHERE:I = 0x25e

.field public static final SIP_SC_NOT_ACCEPTABLE_HERE:I = 0x1e8

.field public static final SIP_SC_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_SC_PRECONDITION_FAILURE:I = 0x244

.field public static final SIP_SC_PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final SIP_SC_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final SIP_SC_REQUEST_PENDING:I = 0x1eb

.field public static final SIP_SC_REQUEST_TERMINATED:I = 0x1e7

.field public static final SIP_SC_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SC_REQUEST_UPDATED:I = 0x1ea

.field public static final SIP_SC_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final SIP_SC_SERVER_TIMEOUT:I = 0x1f8

.field public static final SIP_SC_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_SC_SESSION_TIMER_TOO_SMALL:I = 0x1a6

.field public static final SIP_SC_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SIP_SC_TOO_MANY_HOPS:I = 0x1e3

.field public static final SIP_SC_UNDECIPHERABLE:I = 0x1ed

.field public static final SIP_SC_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final SIP_SC_UNSUPPORTED_URI_SCHEME:I = 0x1a0

.field public static final SIP_SC_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final TRYING:I = 0x64

.field public static final UNAUTHORIZED:I = 0x191

.field public static final USE_PROXY:I = 0x131


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

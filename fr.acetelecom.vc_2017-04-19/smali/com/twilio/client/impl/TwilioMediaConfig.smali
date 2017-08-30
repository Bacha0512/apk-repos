.class Lcom/twilio/client/impl/TwilioMediaConfig;
.super Ljava/lang/Object;


# instance fields
.field echoCancellationTailMS:I

.field soundPlaybackLatencyMS:I

.field soundRecordLatencyMS:I

.field vadEnabled:Z

.field voiceQuality:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/TwilioMediaConfig;->vadEnabled:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/twilio/client/impl/TwilioMediaConfig;->voiceQuality:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/twilio/client/impl/TwilioMediaConfig;->echoCancellationTailMS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/twilio/client/impl/TwilioMediaConfig;->soundRecordLatencyMS:I

    const/16 v0, 0x8c

    iput v0, p0, Lcom/twilio/client/impl/TwilioMediaConfig;->soundPlaybackLatencyMS:I

    return-void
.end method

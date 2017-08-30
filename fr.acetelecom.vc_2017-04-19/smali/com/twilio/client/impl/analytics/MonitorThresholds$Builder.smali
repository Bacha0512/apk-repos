.class public Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/MonitorThresholds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private maxDurationConstantAudioInputLevel:I

.field private maxDurationConstantAudioOutputLevel:I

.field private maxJitterThreshold:I

.field private maxPacketsLostFraction:I

.field private maxRttThreshold:I

.field private minMosScoreThreshhold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->minMosScoreThreshhold:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioInputLevel:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioOutputLevel:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxPacketsLostFraction:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxJitterThreshold:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxRttThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->minMosScoreThreshhold:I

    return v0
.end method

.method static synthetic access$100(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioOutputLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioInputLevel:I

    return v0
.end method

.method static synthetic access$300(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxPacketsLostFraction:I

    return v0
.end method

.method static synthetic access$400(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxJitterThreshold:I

    return v0
.end method

.method static synthetic access$500(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxRttThreshold:I

    return v0
.end method


# virtual methods
.method public audioConstantInputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioInputLevel:I

    return-object p0
.end method

.method public audioConstantOutputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioOutputLevel:I

    return-object p0
.end method

.method public build()Lcom/twilio/client/impl/analytics/MonitorThresholds;
    .locals 2

    new-instance v0, Lcom/twilio/client/impl/analytics/MonitorThresholds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;-><init>(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;Lcom/twilio/client/impl/analytics/MonitorThresholds$1;)V

    return-object v0
.end method

.method public jitterThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxJitterThreshold:I

    return-object p0
.end method

.method public mosScoreThreshhold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->minMosScoreThreshhold:I

    return-object p0
.end method

.method public packetsLostFraction(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxPacketsLostFraction:I

    return-object p0
.end method

.method public rttThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxRttThreshold:I

    return-object p0
.end method

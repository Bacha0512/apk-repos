.class public Lcom/twilio/client/impl/analytics/MonitorThresholds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;
    }
.end annotation


# instance fields
.field private maxDurationConstantAudioInputLevel:I

.field private maxDurationConstantAudioOutputLevel:I

.field private maxJitterThreshold:I

.field private maxPacketsLostFraction:I

.field private maxRttThreshold:I

.field private minMosScoreThreshhold:I


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->minMosScoreThreshhold:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$000(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->minMosScoreThreshhold:I

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioOutputLevel:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$100(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxDurationConstantAudioOutputLevel:I

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxDurationConstantAudioInputLevel:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$200(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxDurationConstantAudioInputLevel:I

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxPacketsLostFraction:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$300(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxPacketsLostFraction:I

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxJitterThreshold:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$400(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxJitterThreshold:I

    # getter for: Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->maxRttThreshold:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->access$500(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxRttThreshold:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;Lcom/twilio/client/impl/analytics/MonitorThresholds$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;-><init>(Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;)V

    return-void
.end method


# virtual methods
.method public getMaxDurationConstantAudioInputLevel()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxDurationConstantAudioInputLevel:I

    return v0
.end method

.method public getMaxDurationConstantAudioOutputLevel()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxDurationConstantAudioOutputLevel:I

    return v0
.end method

.method public getMaxJitterThreshold()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxJitterThreshold:I

    return v0
.end method

.method public getMaxPacketsLostFraction()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxPacketsLostFraction:I

    return v0
.end method

.method public getMaxRttThreshold()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->maxRttThreshold:I

    return v0
.end method

.method public getMinMosScoreThreshhold()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/MonitorThresholds;->minMosScoreThreshhold:I

    return v0
.end method

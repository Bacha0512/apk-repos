.class public Lcom/twilio/client/impl/analytics/RTCMonitor;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;,
        Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;
    }
.end annotation


# static fields
.field private static final SAMPLE_COUNT_TO_RAISE_WARNING:I = 0x3

.field private static final SAMPLE_INTERVAL_IN_MILLISECONDS:I = 0x3e8

.field private static final WARNING_TIMEOUT_IN_MILLISECONDS:I = 0x1388

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private SAMPLE_COUNT_METRICS:I

.field private activeWarnings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private constantAudioInputLevelSampleCounter:I

.field private constantAudioOutputLevelSampleCounter:I

.field private currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private previousAudioInputLevel:I

.field private previousAudioOutputLevel:I

.field private recentSamples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;"
        }
    .end annotation
.end field

.field private rtcStatsProvider:Lcom/twilio/client/impl/analytics/RTCStatsProvider;

.field private volatile started:Z

.field private statsRecorder:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/analytics/RTCStatsProvider;)V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    invoke-direct {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->jitterThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->mosScoreThreshhold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->packetsLostFraction(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->rttThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->audioConstantInputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->audioConstantOutputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->build()Lcom/twilio/client/impl/analytics/MonitorThresholds;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    const/4 v0, 0x5

    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->SAMPLE_COUNT_METRICS:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->rtcStatsProvider:Lcom/twilio/client/impl/analytics/RTCStatsProvider;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/analytics/RTCStatsProvider;Lcom/twilio/client/impl/analytics/MonitorThresholds;)V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    invoke-direct {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->jitterThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->mosScoreThreshhold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->packetsLostFraction(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->rttThreshold(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->audioConstantInputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->audioConstantOutputLevelSampleCounter(I)Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds$Builder;->build()Lcom/twilio/client/impl/analytics/MonitorThresholds;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    const/4 v0, 0x5

    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->SAMPLE_COUNT_METRICS:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RTCStatsProvider must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->rtcStatsProvider:Lcom/twilio/client/impl/analytics/RTCStatsProvider;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/RTCMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    return v0
.end method

.method static synthetic access$100()Lcom/twilio/client/impl/logging/Logger;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/RTCMonitor;)Lcom/twilio/client/impl/analytics/RTCStatsProvider;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->rtcStatsProvider:Lcom/twilio/client/impl/analytics/RTCStatsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/twilio/client/impl/analytics/RTCMonitor;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor;->setCurrentSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    return-void
.end method

.method static synthetic access$400(Lcom/twilio/client/impl/analytics/RTCMonitor;)Lcom/twilio/client/impl/analytics/RTCStatsSample;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    return-object v0
.end method

.method static synthetic access$500(Lcom/twilio/client/impl/analytics/RTCMonitor;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor;->monitor(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    return-void
.end method

.method private checkAudioLevel(IIILcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    if-ne p4, v0, :cond_4

    if-ne p1, p2, :cond_2

    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioInputLevelSampleCounter:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioInputLevelSampleCounter:I

    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioInputLevelSampleCounter:I

    if-ne v0, p3, :cond_3

    iput v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioInputLevelSampleCounter:I

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "audioInputConstantMaxDuration"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioInputLevel()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithValue(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;II)V

    :cond_0
    :goto_1
    iput p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->previousAudioInputLevel:I

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioInputLevelSampleCounter:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    if-ne p4, v0, :cond_1

    if-ne p1, p2, :cond_6

    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioOutputLevelSampleCounter:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioOutputLevelSampleCounter:I

    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioOutputLevelSampleCounter:I

    if-ne v0, p3, :cond_7

    iput v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioOutputLevelSampleCounter:I

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "audioOutputConstantMaxDuration"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioOutputLevel()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithValue(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;II)V

    :cond_5
    :goto_4
    iput p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->previousAudioOutputLevel:I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->constantAudioOutputLevelSampleCounter:I

    if-nez v0, :cond_5

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_4
.end method

.method private checkAudioQuality(Ljava/lang/String;ILcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    if-ne p3, v1, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->countHigh(Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    const-string v0, "jitter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_JITTER:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "jitter"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxJitterThreshold()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithSamples(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MIN:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    if-ne p3, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->countLow(Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "rtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_RTT:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "rtt"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxRttThreshold()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithSamples(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v0, "packetsLostFraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_PACKET_LOSS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "packetsLostFraction"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxPacketsLostFraction()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithSamples(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string v0, "mos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_LOW_MOS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "mos"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMinMosScoreThreshhold()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->raiseWarningWithSamples(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_1

    const-string v0, "jitter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_JITTER:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_1

    :cond_7
    const-string v0, "rtt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_RTT:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_1

    :cond_8
    const-string v0, "packetsLostFraction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_PACKET_LOSS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_1

    :cond_9
    const-string v0, "mos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_LOW_MOS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto/16 :goto_1
.end method

.method private clearWarning(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;->onWarningCleared(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    goto :goto_0
.end method

.method private countHigh(Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCStatsSample;

    const-string v5, "mos"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getMosScore()D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-le v0, p2, :cond_3

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v1, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v5, "jitter"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getJitter()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v5, "rtt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getRtt()I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v5, "packetsLostFraction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getFractionPacketLoss()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private countLow(Ljava/lang/String;ILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCStatsSample;

    const-string v5, "mos"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getMosScore()D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, p2, :cond_3

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v1, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v5, "jitter"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getJitter()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v5, "rtt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getRtt()I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v5, "packetsLostFraction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getFractionPacketLoss()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private monitor(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->SAMPLE_COUNT_METRICS:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget v3, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->SAMPLE_COUNT_METRICS:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioInputLevel()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getAudioInputLevel()I

    move-result v0

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->previousAudioInputLevel:I

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioInputLevel()I

    move-result v2

    sget-object v3, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioLevel(IIILcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioOutputLevel()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getAudioOutputLevel()I

    move-result v0

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->previousAudioOutputLevel:I

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v2}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxDurationConstantAudioOutputLevel()I

    move-result v2

    sget-object v3, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioLevel(IIILcom/twilio/client/impl/InternalConnectionImpl$WarningName;)V

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMinMosScoreThreshhold()I

    move-result v0

    if-le v0, v4, :cond_3

    const-string v0, "mos"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMinMosScoreThreshhold()I

    move-result v1

    sget-object v2, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MIN:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioQuality(Ljava/lang/String;ILcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;)V

    :cond_3
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxJitterThreshold()I

    move-result v0

    if-le v0, v4, :cond_4

    const-string v0, "jitter"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxJitterThreshold()I

    move-result v1

    sget-object v2, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioQuality(Ljava/lang/String;ILcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;)V

    :cond_4
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxRttThreshold()I

    move-result v0

    if-le v0, v4, :cond_5

    const-string v0, "rtt"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxRttThreshold()I

    move-result v1

    sget-object v2, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioQuality(Ljava/lang/String;ILcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;)V

    :cond_5
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxPacketsLostFraction()I

    move-result v0

    if-le v0, v4, :cond_6

    const-string v0, "packetsLostFraction"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->thresholds:Lcom/twilio/client/impl/analytics/MonitorThresholds;

    invoke-virtual {v1}, Lcom/twilio/client/impl/analytics/MonitorThresholds;->getMaxPacketsLostFraction()I

    move-result v1

    sget-object v2, Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;->MAX:Lcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;

    invoke-direct {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->checkAudioQuality(Ljava/lang/String;ILcom/twilio/client/impl/analytics/RTCMonitor$ComparisonType;)V

    :cond_6
    return-void
.end method

.method private raiseWarningWithSamples(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "WarningName"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "WarningParam"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "threshold"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RecentSamples"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->recentSamples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;->onWarning(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private raiseWarningWithValue(Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->activeWarnings:Ljava/util/Map;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "WarningName"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "WarningParam"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "threshold"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RecentSampleValue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;->onWarning(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private setCurrentSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 2

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;->onSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSample()Lcom/twilio/client/impl/analytics/RTCStatsSample;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    return v0
.end method

.method public removeListener(Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;)Z
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/twilio/client/impl/TwilioImpl;->enableMetrics:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Twilio Metrics publisher is disabled. Twilio.setMetrics() API can be used to enabale it."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "stats collection is in progress."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Starting stats collection."

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    new-instance v0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/analytics/RTCMonitor$1;-><init>(Lcom/twilio/client/impl/analytics/RTCMonitor;)V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->statsRecorder:Landroid/os/AsyncTask;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->statsRecorder:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->statsRecorder:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Already stopped publishing"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Stopped publishing"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor;->statsRecorder:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0
.end method

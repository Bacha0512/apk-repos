.class public Lcom/twilio/client/impl/analytics/MetricEventConstants$Thresholds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/MetricEventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Thresholds"
.end annotation


# static fields
.field public static final AUDIO_INPUT_CONSTANT_MAX_DURATIOTN:Ljava/lang/String; = "audioInputConstantMaxDuration"

.field public static final AUDIO_OUTPUT_CONSTANT_MAX_DURATIOTN:Ljava/lang/String; = "audioOutputConstantMaxDuration"

.field public static final JITTER_THRESHOLD_NAME:Ljava/lang/String; = "jitter"

.field public static final MOS_THRESHOLD_NAME:Ljava/lang/String; = "mos"

.field public static final PACKET_FRACTION_LOSS_MIN_THRESHOLD_NAME:Ljava/lang/String; = "packetsLostFraction"

.field public static final RTT_THRESHOLD_NAME:Ljava/lang/String; = "rtt"


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/analytics/MetricEventConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEventConstants$Thresholds;->this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

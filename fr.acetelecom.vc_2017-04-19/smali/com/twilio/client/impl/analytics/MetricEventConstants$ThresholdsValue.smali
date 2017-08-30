.class public Lcom/twilio/client/impl/analytics/MetricEventConstants$ThresholdsValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/MetricEventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThresholdsValue"
.end annotation


# static fields
.field public static final MAX_DURATION_CONSTANT_AUDIO_INPUT_LEVEL:I = 0xa

.field public static final MAX_DURATION_CONSTANT_AUDIO_OUTPUT_LEVEL:I = 0xa

.field public static final MAX_JITTER_THRESHOLD:I = 0x1e

.field public static final MAX_PACKET_LOST_FRACTION:I = 0x1

.field public static final MAX_RTT_THRESHOLD:I = 0x190

.field public static final MIN_MOS_SCORE_THRESHOLD:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/analytics/MetricEventConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEventConstants$ThresholdsValue;->this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

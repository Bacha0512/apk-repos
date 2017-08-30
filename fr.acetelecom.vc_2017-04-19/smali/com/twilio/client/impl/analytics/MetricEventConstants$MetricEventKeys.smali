.class public final Lcom/twilio/client/impl/analytics/MetricEventConstants$MetricEventKeys;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/MetricEventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MetricEventKeys"
.end annotation


# static fields
.field public static final AUDIO_INPUT_LEVEL:Ljava/lang/String; = "audio_level_in"

.field public static final AUDIO_OUTPUT_LEVEL:Ljava/lang/String; = "audio_level_out"

.field public static final JITTER:Ljava/lang/String; = "jitter"

.field public static final MOS:Ljava/lang/String; = "mos"

.field public static final PACKETS_LOST:Ljava/lang/String; = "packets_lost"

.field public static final PACKETS_LOST_FRACTION:Ljava/lang/String; = "packets_lost_fraction"

.field public static final PACKETS_RECEIVED:Ljava/lang/String; = "packets_received"

.field public static final RTT:Ljava/lang/String; = "rtt"

.field public static final TOTAL_BYTES_RECEIVED:Ljava/lang/String; = "total_bytes_received"

.field public static final TOTAL_BYTES_SENT:Ljava/lang/String; = "total_bytes_sent"

.field public static final TOTAL_PACKETS_LOST:Ljava/lang/String; = "total_packets_lost"

.field public static final TOTAL_PACKETS_RECEIVED:Ljava/lang/String; = "total_packets_received"

.field public static final TOTAL_PACKETS_SENT:Ljava/lang/String; = "total_packets_sent"


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/analytics/MetricEventConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEventConstants$MetricEventKeys;->this$0:Lcom/twilio/client/impl/analytics/MetricEventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

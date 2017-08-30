.class public final Lcom/twilio/client/impl/analytics/WarningEventConstants$WarningEventKeys;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/WarningEventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WarningEventKeys"
.end annotation


# static fields
.field public static final RECENT_SAMPLES:Ljava/lang/String; = "RecentSamples"

.field public static final RECENT_SAMPLE_VALUE:Ljava/lang/String; = "RecentSampleValue"

.field public static final THRESHOLD_KEY:Ljava/lang/String; = "threshold"

.field public static final WARNING_NAME:Ljava/lang/String; = "WarningName"

.field public static final WARNING_PARAM:Ljava/lang/String; = "WarningParam"


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/WarningEventConstants;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/analytics/WarningEventConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/WarningEventConstants$WarningEventKeys;->this$0:Lcom/twilio/client/impl/analytics/WarningEventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

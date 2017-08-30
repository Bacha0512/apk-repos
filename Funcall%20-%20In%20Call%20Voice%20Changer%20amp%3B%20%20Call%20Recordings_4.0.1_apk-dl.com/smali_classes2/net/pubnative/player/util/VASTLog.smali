.class public Lnet/pubnative/player/util/VASTLog;
.super Ljava/lang/Object;
.source "VASTLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;
    }
.end annotation


# static fields
.field private static LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/player/util/VASTLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/util/VASTLog;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->verbose:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    sput-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->debug:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->error:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->error:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 98
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    return-void
.end method

.method public static getLoggingLevel()Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->info:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static setLoggingLevel(Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;)V
    .locals 3
    .param p0, "logLevel"    # Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .prologue
    .line 103
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing logging level from :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". To:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sput-object p0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    .line 105
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->verbose:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lnet/pubnative/player/util/VASTLog;->LEVEL:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v0}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->warning:Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;

    invoke-virtual {v1}, Lnet/pubnative/player/util/VASTLog$LOG_LEVEL;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.class public abstract Lcom/fyber/cache/OnVideoCachedListener;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final ACTION_DOWNLOAD_FINISHED:Ljava/lang/String; = "FyberDownloadsFinished"

.field public static final EXTRA_VIDEOS_AVAILABLE:Ljava/lang/String; = "FyberVideosAvailable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FyberVideosAvailable"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/cache/OnVideoCachedListener;->onVideoCached(Z)V

    return-void
.end method

.method public abstract onVideoCached(Z)V
.end method

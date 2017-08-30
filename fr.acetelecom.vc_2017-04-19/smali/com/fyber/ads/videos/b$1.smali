.class final Lcom/fyber/ads/videos/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$1;->a:Lcom/fyber/ads/videos/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "RewardedVideoClient"

    const-string v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Timeout reached, canceling request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$1;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$1;->a:Lcom/fyber/ads/videos/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/b$1;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

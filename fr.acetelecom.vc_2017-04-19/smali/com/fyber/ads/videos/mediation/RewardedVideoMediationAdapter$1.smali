.class final Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;->a:Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;->a:Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter$1;->a:Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->sendVideoEvent(Lcom/fyber/ads/videos/mediation/TPNVideoEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

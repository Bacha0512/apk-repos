.class public final Lcom/fyber/ads/videos/a;
.super Lcom/fyber/utils/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fyber/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "RewardedVideoClickthroughBrowserListener"

    return-object v0
.end method

.method protected final a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Landroid/net/Uri;)V
    .locals 7

    new-instance v4, Lcom/fyber/ads/videos/a$1;

    invoke-direct {v4, p0, p3, p1}, Lcom/fyber/ads/videos/a$1;-><init>(Lcom/fyber/ads/videos/a;Landroid/net/Uri;Lcom/fyber/c/d/d;)V

    new-instance v6, Lcom/fyber/ads/videos/a$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/fyber/ads/videos/a$2;-><init>(Lcom/fyber/ads/videos/a;Lcom/fyber/c/a/a;Lcom/fyber/c/d/d;)V

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_MESSAGE_MARKET:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v3, "Yes"

    const-string v5, "No"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/ads/videos/a;->a(Landroid/content/Context;Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REDIRECT_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    const-string v3, "Yes"

    const-string v5, "No"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/fyber/ads/videos/a;->a(Landroid/content/Context;Lcom/fyber/Fyber$Settings$UIStringIdentifier;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

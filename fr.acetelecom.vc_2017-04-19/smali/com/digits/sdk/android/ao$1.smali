.class Lcom/digits/sdk/android/ao$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ao;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/digits/sdk/android/ao;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ao;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ao$1;->d:Lcom/digits/sdk/android/ao;

    iput-object p2, p0, Lcom/digits/sdk/android/ao$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/digits/sdk/android/ao$1;->b:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    iput-object p4, p0, Lcom/digits/sdk/android/ao$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0xc8

    iget-object v0, p0, Lcom/digits/sdk/android/ao$1;->d:Lcom/digits/sdk/android/ao;

    iget-object v0, v0, Lcom/digits/sdk/android/ao;->d:Landroid/os/ResultReceiver;

    iget-object v1, p0, Lcom/digits/sdk/android/ao$1;->d:Lcom/digits/sdk/android/ao;

    iget-object v2, p0, Lcom/digits/sdk/android/ao$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/digits/sdk/android/ao$1;->b:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/digits/sdk/android/ao;->a(Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ao$1;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digits/sdk/android/ao$1;->c:Landroid/content/Context;

    const-class v3, Lcom/digits/sdk/android/AttributableInviteDownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/digits/sdk/android/ao$1;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v4}, La/a/a/a/a/b/i;->a(Landroid/app/Activity;I)V

    return-void
.end method

.class Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

.field final synthetic val$iconClickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;->this$0:Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    iput-object p2, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;->val$iconClickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;->val$iconClickUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    # getter for: Lnet/pubnative/api/core/view/PNAPIContentInfoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error on click content info text"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

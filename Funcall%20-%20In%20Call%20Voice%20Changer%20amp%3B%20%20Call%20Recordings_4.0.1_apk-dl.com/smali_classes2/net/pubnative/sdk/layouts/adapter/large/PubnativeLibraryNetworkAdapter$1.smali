.class Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$1;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$1;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->hide()V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

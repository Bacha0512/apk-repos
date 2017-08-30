.class Lcom/rami_bar/fun_call/activities/FragmentWeb$1;
.super Ljava/lang/Object;
.source "FragmentWeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentWeb;->handleClicks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$000(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$000(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 56
    :cond_0
    return-void
.end method

.class final Lcom/rami_bar/fun_call/utiles/Functions$1;
.super Landroid/webkit/WebView;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/utiles/Functions;->openWebDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field layoutChangedOnce:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$1;->layoutChangedOnce:Z

    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-super {p0, v0, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 225
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$1;->layoutChangedOnce:Z

    if-nez v0, :cond_0

    .line 217
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$1;->layoutChangedOnce:Z

    .line 220
    :cond_0
    return-void
.end method

.class final Lcom/tapjoy/internal/hf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Lcom/tapjoy/internal/hf;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hf;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tapjoy/internal/hf$1;->c:Lcom/tapjoy/internal/hf;

    iput-object p2, p0, Lcom/tapjoy/internal/hf$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/tapjoy/internal/hf$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/hf$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/hf$1;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tapjoy/internal/hf$1;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v0}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

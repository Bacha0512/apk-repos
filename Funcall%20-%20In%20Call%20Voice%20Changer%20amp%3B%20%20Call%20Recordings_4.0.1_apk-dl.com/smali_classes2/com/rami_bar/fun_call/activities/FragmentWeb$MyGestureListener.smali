.class final Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FragmentWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyGestureListener"
.end annotation


# static fields
.field private static final SWIPE_DISTANCE_THRESHOLD:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;Lcom/rami_bar/fun_call/activities/FragmentWeb$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/activities/FragmentWeb$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 174
    :goto_0
    return v2

    .line 168
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentWeb;->onSwipeUp()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$300(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;->this$0:Lcom/rami_bar/fun_call/activities/FragmentWeb;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentWeb;->onSwipeDown()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->access$400(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    goto :goto_0
.end method

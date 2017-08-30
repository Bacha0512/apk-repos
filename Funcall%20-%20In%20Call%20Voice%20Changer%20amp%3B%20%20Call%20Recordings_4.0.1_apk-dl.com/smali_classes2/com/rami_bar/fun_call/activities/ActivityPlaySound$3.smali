.class Lcom/rami_bar/fun_call/activities/ActivityPlaySound$3;
.super Ljava/lang/Object;
.source "ActivityPlaySound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityPlaySound;->handleMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityPlaySound;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityPlaySound$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

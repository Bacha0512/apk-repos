.class public Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/objects/receive/Recordings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Recording"
.end annotation


# instance fields
.field public answered_time:Ljava/lang/String;

.field public dialout_name:Ljava/lang/String;

.field public dialout_num:Ljava/lang/String;

.field public rec_purchased:Ljava/lang/String;

.field public start_date:Ljava/lang/String;

.field final synthetic this$0:Lcom/rami_bar/fun_call/objects/receive/Recordings;

.field public uniqueid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rami_bar/fun_call/objects/receive/Recordings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/objects/receive/Recordings;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->this$0:Lcom/rami_bar/fun_call/objects/receive/Recordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

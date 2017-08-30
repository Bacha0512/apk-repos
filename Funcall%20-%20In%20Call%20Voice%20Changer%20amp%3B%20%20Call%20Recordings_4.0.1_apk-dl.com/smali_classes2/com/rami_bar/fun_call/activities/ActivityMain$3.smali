.class Lcom/rami_bar/fun_call/activities/ActivityMain$3;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->handleViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 456
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$3;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setIsRecording(Z)V

    .line 457
    return-void
.end method

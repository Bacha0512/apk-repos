.class Lcom/rami_bar/fun_call/activities/ActivityMain$1;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 406
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 426
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 413
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "number":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$300(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->setCountryToCall(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$400(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

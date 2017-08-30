.class Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;
.super Ljava/lang/Object;
.source "ActivityChangeNumber.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setDataToViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 178
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 163
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "number":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;->this$0:Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$000(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setCountryToCall(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->access$100(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void

    .line 167
    :cond_1
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "00"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

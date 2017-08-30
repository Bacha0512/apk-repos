.class Lcom/weirdvoice/ui/Myaccount$1;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/Myaccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/ui/Myaccount;->access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V

    .line 341
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v1, 0xc8

    .line 344
    .local v1, "progr":I
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->scarryv:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$8(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    const/16 v1, 0x15e

    .line 353
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$12(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 354
    const-string v2, "skbProgr"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string v2, "voiceopt"

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # invokes: Lcom/weirdvoice/ui/Myaccount;->getVoiceValue(I)F
    invoke-static {v3, v1}, Lcom/weirdvoice/ui/Myaccount;->access$13(Lcom/weirdvoice/ui/Myaccount;I)F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->normalv:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$9(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const/16 v1, 0x1f4

    .line 348
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->funnyv:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$10(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    const/16 v1, 0x258

    .line 350
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$1;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->chipmunkv:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$11(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/16 v1, 0x2ee

    goto :goto_0
.end method

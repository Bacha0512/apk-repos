.class Lcom/weirdvoice/ui/Myaccount$7;
.super Ljava/lang/Object;
.source "Myaccount.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/Myaccount;->displayWeird()V
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
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/ui/Myaccount;->access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V

    .line 301
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "skbProgr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 303
    const-string v1, "voiceopt"

    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # invokes: Lcom/weirdvoice/ui/Myaccount;->getVoiceValue(I)F
    invoke-static {v2, p2}, Lcom/weirdvoice/ui/Myaccount;->access$13(Lcom/weirdvoice/ui/Myaccount;I)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->deepv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$19(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 320
    :goto_0
    return-void

    .line 308
    :cond_0
    const/16 v1, 0x15e

    if-ne p2, v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->scarryv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$8(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 310
    :cond_1
    const/16 v1, 0x1f4

    if-ne p2, v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->normalv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$9(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 312
    :cond_2
    const/16 v1, 0x258

    if-ne p2, v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->funnyv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$10(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 314
    :cond_3
    const/16 v1, 0x2ee

    if-ne p2, v1, :cond_4

    .line 315
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->chipmunkv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$11(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount$7;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->hiddenv:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/weirdvoice/ui/Myaccount;->access$20(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 298
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 295
    return-void
.end method

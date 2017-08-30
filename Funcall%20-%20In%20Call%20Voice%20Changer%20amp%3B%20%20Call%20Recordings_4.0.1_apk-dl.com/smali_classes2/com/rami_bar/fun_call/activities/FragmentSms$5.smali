.class Lcom/rami_bar/fun_call/activities/FragmentSms$5;
.super Ljava/lang/Thread;
.source "FragmentSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentSms;->onSendSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

.field final synthetic val$smsCantSend:Ljava/lang/String;

.field final synthetic val$smsText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentSms;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->val$smsText:Ljava/lang/String;

    iput-object p3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->val$smsCantSend:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 227
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rami_bar/fun_call/objects/Contact;

    .line 228
    .local v6, "contact":Lcom/rami_bar/fun_call/objects/Contact;
    iget-object v2, v6, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget-object v2, v6, Lcom/rami_bar/fun_call/objects/Contact;->phone_number:Ljava/lang/String;

    const-string v3, "\\D+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "sms_number":Ljava/lang/String;
    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/Functions;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->val$smsText:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 233
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v7

    .line 235
    .local v7, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-virtual {v2}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->val$smsCantSend:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 241
    .end local v1    # "sms_number":Ljava/lang/String;
    .end local v6    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentSms;->sendShare()V
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$500(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    .line 242
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 243
    return-void
.end method

.class Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;
.super Ljava/lang/Object;
.source "CallLogDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v5, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v5}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->access$1(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)Lcom/weirdvoice/api/ISipService;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, "nbr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "accregistered"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "accReg":Ljava/lang/String;
    const-string v5, "noreg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0c000f

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 179
    .end local v2    # "accReg":Ljava/lang/String;
    .end local v3    # "nbr":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v2    # "accReg":Ljava/lang/String;
    .restart local v3    # "nbr":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;
    invoke-static {v5}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->access$2(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)Lcom/weirdvoice/widgets/AccountChooserButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 164
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    iget-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 166
    .local v1, "accId":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 167
    iget-object v5, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v5}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->access$1(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)Lcom/weirdvoice/api/ISipService;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-interface {v5, v3, v6}, Lcom/weirdvoice/api/ISipService;->makeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v5

    goto :goto_0
.end method

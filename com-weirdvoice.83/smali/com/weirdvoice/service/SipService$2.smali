.class Lcom/weirdvoice/service/SipService$2;
.super Lcom/weirdvoice/api/ISipConfiguration$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    .line 892
    invoke-direct {p0}, Lcom/weirdvoice/api/ISipConfiguration$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreferenceFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPreferenceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 898
    return-void
.end method

.method public setPreferenceFloat(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 905
    return-void
.end method

.method public setPreferenceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    const-string v1, "android.permission.CONFIGURE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$2;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

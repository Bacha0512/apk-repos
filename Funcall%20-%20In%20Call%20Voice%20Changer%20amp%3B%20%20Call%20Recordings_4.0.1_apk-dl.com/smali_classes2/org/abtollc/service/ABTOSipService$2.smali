.class Lorg/abtollc/service/ABTOSipService$2;
.super Lorg/abtollc/api/ISipConfiguration$Stub;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 1001
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0}, Lorg/abtollc/api/ISipConfiguration$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enableDNSSRV()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v0

    .line 1277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceDtmfInBand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->forceDtmfInBand()Z

    move-result v0

    .line 1404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceDtmfRTP()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1409
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->forceDtmfRTP()Z

    move-result v0

    .line 1412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateForSetCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v0

    .line 1165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllIncomingNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getAllIncomingNetworks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutoCloseTime()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1322
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getAutoCloseTime()I

    move-result v0

    .line 1325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClockRate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getClockRate()J

    move-result-wide v0

    .line 1141
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1431
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 1434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDSCPVal()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getDSCPVal()I

    move-result v0

    .line 1285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEchoCancellationTail()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v0

    .line 1341
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getHeadsetAction()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getHeadsetAction()I

    move-result v0

    .line 1317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIceEnabled()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1354
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getIceEnabled()I

    move-result v0

    .line 1357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInCallMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getInCallMode()I

    move-result v0

    .line 1133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInitialVolumeLevel()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1170
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v0

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v0

    .line 1125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getMediaQuality()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1346
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getMediaQuality()J

    move-result-wide v0

    .line 1349
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 1023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceBooleanValue2(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result p2

    .line 1015
    .end local p2    # "b":Z
    :cond_0
    return p2
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    .line 1063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceFloatValue2(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;F)F

    move-result p2

    .line 1071
    .end local p2    # "f":F
    :cond_0
    return p2
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 1047
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceIntegerValue2(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result p2

    .line 1055
    .end local p2    # "i":I
    :cond_0
    return p2
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceStringValue2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1039
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getRTPPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRTPPort()I

    move-result v0

    .line 1269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRingtone()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStunEnabled()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1370
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getStunEnabled()I

    move-result v0

    .line 1373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1306
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTCPTransportPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTCPTransportPort()I

    move-result v0

    .line 1229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTLSMethod()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSMethod()I

    move-result v0

    .line 1293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTLSTransportPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTLSTransportPort()I

    move-result v0

    .line 1237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTcpKeepAliveInterval()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTcpKeepAliveInterval()I

    move-result v0

    .line 1253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTlsKeepAliveInterval()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1258
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTlsKeepAliveInterval()I

    move-result v0

    .line 1261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTurnEnabled()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnEnabled()I

    move-result v0

    .line 1365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTurnServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getTurnServer()Ljava/lang/String;

    move-result-object v0

    .line 1381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUDPTransportPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUDPTransportPort()I

    move-result v0

    .line 1221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUdpKeepAliveInterval()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1242
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUdpKeepAliveInterval()I

    move-result v0

    .line 1245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 1301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEchoCancellation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->hasEchoCancellation()Z

    move-result v0

    .line 1333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTCPEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isTCPEnabled()Z

    move-result v0

    .line 1189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTLSEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isTLSEnabled()Z

    move-result v0

    .line 1205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDPEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isUDPEnabled()Z

    move-result v0

    .line 1197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidConnectionForIncoming()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v0

    .line 1109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidConnectionForOutgoing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v0

    .line 1101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAllDefaultValues()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V

    .line 1008
    :cond_0
    return-void
.end method

.method public setCodecList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setCodecList(Ljava/util/List;)V

    .line 1420
    :cond_0
    return-void
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_0
    return-void
.end method

.method public setLibCapability(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cap"    # Ljava/lang/String;
    .param p2, "canDo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 1389
    :cond_0
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1087
    :cond_0
    return-void
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 1094
    :cond_0
    return-void
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public setVideoCodecList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, "codecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setVideoCodecList(Ljava/util/List;)V

    .line 1427
    :cond_0
    return-void
.end method

.method public useIPv6()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v0

    .line 1213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useModeApi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useModeApi()Z

    move-result v0

    .line 1157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useRoutingApi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v0

    .line 1149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useSipInfoDtmf()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$2;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useSipInfoDtmf()Z

    move-result v0

    .line 1396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

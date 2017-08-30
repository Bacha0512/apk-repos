.class Lcom/ironsource/mediationsdk/integration/AdapterObject;
.super Ljava/lang/Object;
.source "AdapterObject.java"


# static fields
.field private static final mAdapter:Ljava/lang/String; = "Adapter"

.field private static final mAdapterbase:Ljava/lang/String; = "com.ironsource.adapters."


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterName:Ljava/lang/String;

.field private mBroadcastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAdapter:Z

.field private mName:Ljava/lang/String;

.field private mPermissionToMaxSdkVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionToMinSdkVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "isAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    .line 29
    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mIsAdapter:Z

    .line 30
    if-eqz p3, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ironsource.adapters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mAdapterName:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method getActivities()Ljava/util/List;
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

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    return-object v0
.end method

.method getAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method getBroadcastReceivers()Ljava/util/List;
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

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mBroadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method getExternalLibraries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mExternalLibraries:Ljava/util/ArrayList;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionToMaxSdkVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissionToMaxSdkVersion:Ljava/util/Map;

    return-object v0
.end method

.method public getPermissionToMinSdkVersion()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissionToMinSdkVersion:Ljava/util/Map;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
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

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissions:Ljava/util/List;

    return-object v0
.end method

.method getSdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mSdkName:Ljava/lang/String;

    return-object v0
.end method

.method isAdapter()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mIsAdapter:Z

    return v0
.end method

.method setActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    .line 56
    return-void
.end method

.method setBroadcastReceivers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mBroadcastReceivers:Ljava/util/List;

    .line 88
    return-void
.end method

.method setExternalLibraries(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "externalLibraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mExternalLibraries:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPermissionToMaxSdkVersion(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "permissionToMaxSdkVersion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissionToMaxSdkVersion:Ljava/util/Map;

    .line 96
    return-void
.end method

.method public setPermissionToMinSdkVersion(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "permissionToMinSdkVersion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissionToMinSdkVersion:Ljava/util/Map;

    .line 104
    return-void
.end method

.method setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mPermissions:Ljava/util/List;

    .line 48
    return-void
.end method

.method setSdkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ironsource/mediationsdk/integration/AdapterObject;->mSdkName:Ljava/lang/String;

    .line 72
    return-void
.end method

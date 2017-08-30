.class public Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
.super Ljava/lang/Object;
.source "ExtraPlugins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/ExtraPlugins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynCodecInfos"
.end annotation


# instance fields
.field public factoryDeinitFunction:Ljava/lang/String;

.field public factoryInitFunction:Ljava/lang/String;

.field public libraryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cmp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 56
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 57
    .local v0, "infos":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "init_factory"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    .line 58
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "deinit_factory"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryDeinitFunction:Ljava/lang/String;

    .line 60
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "lib_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "libName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 64
    .local v3, "pInfos":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lorg/abtollc/voip/NativeLibManager;->getLibFileFromPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 65
    .local v1, "libFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "libraryPath"    # Ljava/lang/String;
    .param p2, "factoryInitFunction"    # Ljava/lang/String;
    .param p3, "factoryDeinitFunction"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 82
    .local v1, "pInfos":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lorg/abtollc/voip/NativeLibManager;->getLibFileFromPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "libFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    .line 87
    :cond_0
    iput-object p2, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryDeinitFunction:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "File : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lorg/abtollc/sdk/AbtoApplication;
.super Landroid/app/Application;
.source "AbtoApplication.java"


# static fields
.field public static final BUILD:Ljava/lang/String; = "20170523"


# instance fields
.field private abtoPhone:Lorg/abtollc/sdk/AbtoPhone;

.field private dbProvider:Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbtoPhone()Lorg/abtollc/sdk/AbtoPhone;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoApplication;->abtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    return-object v0
.end method

.method public getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoApplication;->dbProvider:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    invoke-static {p0}, Lorg/abtollc/sdk/AbtoPhone;->init(Landroid/content/Context;)Lorg/abtollc/sdk/AbtoPhone;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoApplication;->abtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    .line 31
    new-instance v0, Lorg/abtollc/db/DBProvider;

    invoke-direct {v0, p0}, Lorg/abtollc/db/DBProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoApplication;->dbProvider:Landroid/content/ContentProvider;

    .line 32
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoApplication;->dbProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 33
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoApplication;->abtoPhone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.class Lorg/abtollc/sdk/AbtoPhone$3;
.super Ljava/lang/Object;
.source "AbtoPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/sdk/AbtoPhone;


# direct methods
.method constructor <init>(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 868
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone$3;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 873
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone$3;->this$0:Lorg/abtollc/sdk/AbtoPhone;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhone;->hangUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

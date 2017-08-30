.class public Lcom/weirdvoice/widgets/EditSipUri$ToCall;
.super Ljava/lang/Object;
.source "EditSipUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/widgets/EditSipUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToCall"
.end annotation


# instance fields
.field private accountId:Ljava/lang/Long;

.field private callee:Ljava/lang/String;

.field final synthetic this$0:Lcom/weirdvoice/widgets/EditSipUri;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/widgets/EditSipUri;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p2, "acc"    # Ljava/lang/Long;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/weirdvoice/widgets/EditSipUri$ToCall;->this$0:Lcom/weirdvoice/widgets/EditSipUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/weirdvoice/widgets/EditSipUri$ToCall;->accountId:Ljava/lang/Long;

    .line 133
    iput-object p3, p0, Lcom/weirdvoice/widgets/EditSipUri$ToCall;->callee:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri$ToCall;->accountId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/weirdvoice/widgets/EditSipUri$ToCall;->callee:Ljava/lang/String;

    return-object v0
.end method

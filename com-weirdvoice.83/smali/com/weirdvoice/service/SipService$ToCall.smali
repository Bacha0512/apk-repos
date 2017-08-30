.class public final Lcom/weirdvoice/service/SipService$ToCall;
.super Ljava/lang/Object;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToCall"
.end annotation


# instance fields
.field private callee:Ljava/lang/String;

.field private dtmf:Ljava/lang/String;

.field private pjsipAccountId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/Integer;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1710
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 1711
    iput-object p2, p0, Lcom/weirdvoice/service/SipService$ToCall;->callee:Ljava/lang/String;

    .line 1712
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/Integer;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "dtmfChars"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 1715
    iput-object p2, p0, Lcom/weirdvoice/service/SipService$ToCall;->callee:Ljava/lang/String;

    .line 1716
    iput-object p3, p0, Lcom/weirdvoice/service/SipService$ToCall;->dtmf:Ljava/lang/String;

    .line 1717
    return-void
.end method


# virtual methods
.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$ToCall;->callee:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$ToCall;->dtmf:Ljava/lang/String;

    return-object v0
.end method

.method public getPjsipAccountId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    return-object v0
.end method

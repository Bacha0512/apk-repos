.class public final Lorg/abtollc/service/ABTOSipService$ToCall;
.super Ljava/lang/Object;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
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
    .line 2379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2380
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 2381
    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->callee:Ljava/lang/String;

    .line 2382
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/Integer;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "dtmfChars"    # Ljava/lang/String;

    .prologue
    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2385
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 2386
    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->callee:Ljava/lang/String;

    .line 2387
    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->dtmf:Ljava/lang/String;

    .line 2388
    return-void
.end method


# virtual methods
.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2401
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->callee:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2408
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->dtmf:Ljava/lang/String;

    return-object v0
.end method

.method public getPjsipAccountId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    return-object v0
.end method

.class public Lcom/weirdvoice/service/SipService$SameThreadException;
.super Ljava/lang/Exception;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SameThreadException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc9179fc3694af88L


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$SameThreadException;->this$0:Lcom/weirdvoice/service/SipService;

    .line 1954
    const-string v0, "Should be launched from a single worker thread"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1955
    return-void
.end method

.class public Lorg/abtollc/service/ABTOSipService$SameThreadException;
.super Ljava/lang/Exception;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SameThreadException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xc9179fc3694af88L


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2624
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$SameThreadException;->this$0:Lorg/abtollc/service/ABTOSipService;

    .line 2625
    const-string v0, "Should be launched from a single worker thread"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2626
    return-void
.end method

.class public Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;
.super Ljava/lang/Object;
.source "JsonGetCallerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "registerCallerId"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9L


# instance fields
.field public clid_type:Ljava/lang/String;

.field public enabled:Z

.field public register_price:Ljava/lang/String;

.field final synthetic this$0:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

.field public user_number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;->this$0:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

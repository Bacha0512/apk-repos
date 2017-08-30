.class public Lcom/rami_bar/fun_call/objects/receive/Recordings;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    }
.end annotation


# instance fields
.field public call_history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;",
            ">;"
        }
    .end annotation
.end field

.field public call_history_credit_text:Ljava/lang/String;

.field public download_credit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/objects/receive/Recordings;->download_credit:I

    return-void
.end method

.class public final Lcom/tapjoy/internal/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bn$3;
    }
.end annotation


# static fields
.field public static final a:Lcom/tapjoy/internal/bm;

.field public static final b:Lcom/tapjoy/internal/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tapjoy/internal/bn$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bm;

    .line 32
    new-instance v0, Lcom/tapjoy/internal/bn$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/bn$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bn;->b:Lcom/tapjoy/internal/bm;

    return-void
.end method

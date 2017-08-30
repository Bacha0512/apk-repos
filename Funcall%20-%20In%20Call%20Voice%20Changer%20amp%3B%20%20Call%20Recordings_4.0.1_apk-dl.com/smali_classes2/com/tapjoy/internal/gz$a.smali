.class public final Lcom/tapjoy/internal/gz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tapjoy/internal/gb;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/gb;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    .line 114
    iput-object p2, p0, Lcom/tapjoy/internal/gz$a;->b:Ljava/util/List;

    .line 115
    return-void
.end method

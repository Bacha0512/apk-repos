.class public final Lcom/tapjoy/internal/gq$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tapjoy/internal/ft;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ft;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    iput-object p2, p0, Lcom/tapjoy/internal/gq$a;->b:Ljava/util/List;

    return-void
.end method

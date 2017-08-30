.class public final Lcom/tapjoy/internal/fi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fi;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fi$1;->a:Lcom/tapjoy/internal/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fi$1;->a:Lcom/tapjoy/internal/fi;

    invoke-static {v0}, Lcom/tapjoy/internal/fi;->a(Lcom/tapjoy/internal/fi;)V

    return-void
.end method

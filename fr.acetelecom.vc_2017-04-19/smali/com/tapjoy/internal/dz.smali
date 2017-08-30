.class public final Lcom/tapjoy/internal/dz;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/dz;->a:Ljava/util/List;

    return-void
.end method

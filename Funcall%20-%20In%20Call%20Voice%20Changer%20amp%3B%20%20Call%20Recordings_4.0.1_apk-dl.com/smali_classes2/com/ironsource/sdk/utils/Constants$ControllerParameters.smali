.class public Lcom/ironsource/sdk/utils/Constants$ControllerParameters;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerParameters"
.end annotation


# static fields
.field public static final GLOBAL_RUNTIME:I = 0x30d40

.field public static final LOAD_ATTEMPS:I = 0x3

.field public static final LOAD_RUNTIME:I = 0xc350

.field public static final SECOND:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/utils/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/utils/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/utils/Constants;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/ironsource/sdk/utils/Constants$ControllerParameters;->this$0:Lcom/ironsource/sdk/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

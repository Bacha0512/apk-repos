.class Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;
.super Ljava/lang/Object;
.source "InCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCallerInfoMessage"
.end annotation


# instance fields
.field callerInfo:Lcom/weirdvoice/models/CallerInfo;

.field target:Lcom/weirdvoice/ui/incall/InCallCard;

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallCard;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallCard;Lcom/weirdvoice/ui/incall/InCallCard;Lcom/weirdvoice/models/CallerInfo;)V
    .locals 0
    .param p2, "callCard"    # Lcom/weirdvoice/ui/incall/InCallCard;
    .param p3, "ci"    # Lcom/weirdvoice/models/CallerInfo;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p3, p0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    .line 551
    iput-object p2, p0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/weirdvoice/ui/incall/InCallCard;

    .line 552
    return-void
.end method

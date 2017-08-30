.class public Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final VIEW_TYPE_HEADER:I = 0x0

.field private static final VIEW_TYPE_HISTORY_ITEM:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "phoneCallDetails"    # [Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p3, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .line 58
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 11
    .param p1, "elapsedSeconds"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 151
    const-wide/16 v0, 0x0

    .line 152
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 160
    .local v2, "seconds":J
    cmp-long v4, p1, v6

    if-ltz v4, :cond_1

    .line 161
    div-long v0, p1, v6

    .line 162
    mul-long v4, v0, v6

    sub-long/2addr p1, v4

    .line 163
    cmp-long v4, p1, v8

    if-lez v4, :cond_0

    .line 164
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 169
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0312

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 165
    :cond_1
    cmp-long v4, p1, v8

    if-lez v4, :cond_0

    .line 166
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private getCallTypeText(I)I
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid call type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    const v0, 0x7f0c0059

    .line 144
    :goto_0
    return v0

    .line 142
    :pswitch_1
    const v0, 0x7f0c005a

    goto :goto_0

    .line 144
    :pswitch_2
    const v0, 0x7f0c005b

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030022

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 96
    .local v15, "result":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .line 98
    .local v13, "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    const v3, 0x7f0b006c

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/ui/calllog/CallTypeIconsView;

    .line 99
    .local v9, "callTypeIconView":Lcom/weirdvoice/ui/calllog/CallTypeIconsView;
    const v3, 0x7f0b006d

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 100
    .local v10, "callTypeTextView":Landroid/widget/TextView;
    const v3, 0x7f0b006e

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 101
    .local v12, "dateView":Landroid/widget/TextView;
    const v3, 0x7f0b006f

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 103
    .local v14, "durationView":Landroid/widget/TextView;
    iget-object v3, v13, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 104
    .local v2, "callType":I
    invoke-virtual {v9}, Lcom/weirdvoice/ui/calllog/CallTypeIconsView;->clear()V

    .line 105
    invoke-virtual {v9, v2}, Lcom/weirdvoice/ui/calllog/CallTypeIconsView;->add(I)V

    .line 107
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v16, "typeSb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->getCallTypeText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v13, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->date:J

    iget-wide v6, v13, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->date:J

    .line 122
    const/16 v8, 0x17

    .line 121
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "dateValue":Ljava/lang/CharSequence;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 127
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_1
    return-object v15

    .end local v2    # "callType":I
    .end local v9    # "callTypeIconView":Lcom/weirdvoice/ui/calllog/CallTypeIconsView;
    .end local v10    # "callTypeTextView":Landroid/widget/TextView;
    .end local v11    # "dateValue":Ljava/lang/CharSequence;
    .end local v12    # "dateView":Landroid/widget/TextView;
    .end local v13    # "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .end local v14    # "durationView":Landroid/widget/TextView;
    .end local v15    # "result":Landroid/view/View;
    .end local v16    # "typeSb":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v15, p2

    .line 94
    goto :goto_0

    .line 129
    .restart local v2    # "callType":I
    .restart local v9    # "callTypeIconView":Lcom/weirdvoice/ui/calllog/CallTypeIconsView;
    .restart local v10    # "callTypeTextView":Landroid/widget/TextView;
    .restart local v11    # "dateValue":Ljava/lang/CharSequence;
    .restart local v12    # "dateView":Landroid/widget/TextView;
    .restart local v13    # "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .restart local v14    # "durationView":Landroid/widget/TextView;
    .restart local v15    # "result":Landroid/view/View;
    .restart local v16    # "typeSb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-wide v4, v13, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

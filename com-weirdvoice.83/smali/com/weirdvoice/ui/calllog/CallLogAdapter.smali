.class public Lcom/weirdvoice/ui/calllog/CallLogAdapter;
.super Lcom/weirdvoice/ui/calllog/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;,
        Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;,
        Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "CallLogAdapter"


# instance fields
.field private callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

.field private final mCallFetcher:Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;

.field private final mContext:Landroid/content/Context;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/calllog/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    .line 84
    new-instance v2, Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$1;-><init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v2, Lcom/weirdvoice/ui/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$2;-><init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 107
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallFetcher:Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;

    .line 110
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;)V

    .line 114
    .local v0, "phoneCallDetailsHelper":Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;
    new-instance v2, Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;

    invoke-direct {v2, v0, p1}, Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;-><init>(Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;

    .line 115
    new-instance v2, Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;-><init>(Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/calllog/CallLogAdapter;)Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;Landroid/database/Cursor;I)V
    .locals 32
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "count"    # I

    .prologue
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;

    .line 196
    .local v29, "views":Lcom/weirdvoice/ui/calllog/CallLogListItemViews;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->isLastOfSection(Landroid/database/Cursor;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x8

    :goto_0
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const-string v16, "number"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 200
    .local v25, "numberColIndex":I
    const-string v16, "date"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 201
    .local v21, "dateColIndex":I
    const-string v16, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 202
    .local v22, "durationColIndex":I
    const-string v16, "account_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 205
    .local v18, "accIdIndex":I
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "number":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 207
    .local v8, "date":J
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 208
    .local v10, "duration":J
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 213
    .local v17, "accId":Ljava/lang/Long;
    new-instance v20, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;

    const/16 v16, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;-><init>(Lcom/weirdvoice/ui/calllog/CallLogAdapter;Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;)V

    .line 214
    .local v20, "cri":Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->callIds:[J

    .line 215
    move/from16 v0, p1

    move-object/from16 v1, v20

    iput v0, v1, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->position:I

    .line 216
    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->number:Ljava/lang/String;

    .line 217
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;->accId:Ljava/lang/Long;

    .line 218
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 220
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x8

    :goto_1
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    const v16, 0x7f0b0074

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 224
    .local v19, "cachedNumber":Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 274
    :goto_2
    return-void

    .line 197
    .end local v5    # "number":Ljava/lang/String;
    .end local v8    # "date":J
    .end local v10    # "duration":J
    .end local v17    # "accId":Ljava/lang/Long;
    .end local v18    # "accIdIndex":I
    .end local v19    # "cachedNumber":Ljava/lang/String;
    .end local v20    # "cri":Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;
    .end local v21    # "dateColIndex":I
    .end local v22    # "durationColIndex":I
    .end local v25    # "numberColIndex":I
    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 221
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v8    # "date":J
    .restart local v10    # "duration":J
    .restart local v17    # "accId":Ljava/lang/Long;
    .restart local v18    # "accIdIndex":I
    .restart local v20    # "cri":Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallRowInfos;
    .restart local v21    # "dateColIndex":I
    .restart local v22    # "durationColIndex":I
    .restart local v25    # "numberColIndex":I
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 230
    .restart local v19    # "cachedNumber":Ljava/lang/String;
    :cond_2
    const-string v26, ""

    .line 232
    .local v26, "numberDig":Ljava/lang/String;
    :try_start_0
    const-string v28, ""

    .line 233
    .local v28, "tmp":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 235
    const-string v16, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 236
    .local v27, "parts":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v27, v16

    const-string v30, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v30, 0x1

    aget-object v26, v16, v30

    .line 238
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v30, 0x10

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 239
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_4

    .line 246
    .end local v23    # "i":I
    :cond_3
    move-object/from16 v26, v28

    .line 250
    .end local v27    # "parts":[Ljava/lang/String;
    .end local v28    # "tmp":Ljava/lang/String;
    :goto_4
    move-object/from16 v5, v26

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v24

    .line 254
    .local v24, "info":Lcom/weirdvoice/models/CallerInfo;
    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 255
    .local v15, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    .line 256
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, v24

    iget v13, v0, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    .line 257
    .local v13, "ntype":I
    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/weirdvoice/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 258
    .local v14, "label":Ljava/lang/String;
    move-object/from16 v6, v26

    .line 259
    .local v6, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v7

    .line 262
    .local v7, "callTypes":[I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 263
    new-instance v4, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    invoke-direct/range {v4 .. v11}, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJ)V

    .line 272
    .local v4, "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/weirdvoice/ui/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/weirdvoice/ui/calllog/CallLogListItemViews;Lcom/weirdvoice/ui/calllog/PhoneCallDetails;)V

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->setPhoto(Lcom/weirdvoice/ui/calllog/CallLogListItemViews;Lcom/weirdvoice/models/CallerInfo;)V

    goto/16 :goto_2

    .line 240
    .end local v4    # "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .end local v6    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v7    # "callTypes":[I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "ntype":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v24    # "info":Lcom/weirdvoice/models/CallerInfo;
    .restart local v23    # "i":I
    .restart local v27    # "parts":[Ljava/lang/String;
    .restart local v28    # "tmp":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x30

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x31

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x32

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x33

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    .line 241
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x34

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x35

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x36

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x37

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    .line 242
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x38

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v30, 0x39

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 243
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v28

    .line 239
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 268
    .end local v23    # "i":I
    .end local v27    # "parts":[Ljava/lang/String;
    .end local v28    # "tmp":Ljava/lang/String;
    .restart local v6    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v7    # "callTypes":[I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "ntype":I
    .restart local v14    # "label":Ljava/lang/String;
    .restart local v15    # "lookupUri":Landroid/net/Uri;
    .restart local v24    # "info":Lcom/weirdvoice/models/CallerInfo;
    :cond_7
    new-instance v4, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .line 269
    const/16 v16, 0x0

    .line 268
    invoke-direct/range {v4 .. v16}, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v4    # "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    goto/16 :goto_5

    .line 248
    .end local v4    # "details":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .end local v6    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v7    # "callTypes":[I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "ntype":I
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "lookupUri":Landroid/net/Uri;
    .end local v24    # "info":Lcom/weirdvoice/models/CallerInfo;
    :catch_0
    move-exception v16

    goto/16 :goto_4
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-static {p1}, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/weirdvoice/ui/calllog/CallLogListItemViews;

    move-result-object v0

    .line 178
    .local v0, "views":Lcom/weirdvoice/ui/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 179
    iget-object v1, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, v0, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method private getCallIds(Landroid/database/Cursor;I)[J
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 323
    .local v2, "position":I
    new-array v0, p2, [J

    .line 324
    .local v0, "callIds":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 330
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 331
    return-object v0

    .line 325
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 326
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 328
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 293
    .local v2, "position":I
    new-array v0, p2, [I

    .line 294
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 298
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 299
    return-object v0

    .line 295
    :cond_0
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 296
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 278
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPhoto(Lcom/weirdvoice/ui/calllog/CallLogListItemViews;Lcom/weirdvoice/models/CallerInfo;)V
    .locals 3
    .param p1, "views"    # Lcom/weirdvoice/ui/calllog/CallLogListItemViews;
    .param p2, "ci"    # Lcom/weirdvoice/models/CallerInfo;

    .prologue
    .line 350
    iget-object v0, p1, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    iget-object v1, p2, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 351
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/weirdvoice/ui/calllog/CallLogListItemViews;->quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 352
    invoke-virtual {v1}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 354
    const v2, 0x7f020189

    .line 351
    invoke-static {v0, v1, p2, v2}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    .line 355
    return-void
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3}, Lcom/weirdvoice/ui/calllog/GroupingListAdapter;->addGroup(IIZ)V

    .line 360
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/ui/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 129
    return-void
.end method

.method public bindChildView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 157
    return-void
.end method

.method public bindGroupView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "groupSize"    # I
    .param p6, "expanded"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 173
    return-void
.end method

.method public bindStandAloneView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 143
    return-void
.end method

.method public getCallIdsAtPosition(I)[J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 310
    .local v1, "item":Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v0

    .line 311
    .local v0, "count":I
    invoke-direct {p0, v1, v0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v2

    return-object v2
.end method

.method public getCallRemoteAtPostion(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 341
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 342
    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "number":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 345
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 151
    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 162
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 163
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 165
    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 137
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->mCallFetcher:Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/weirdvoice/ui/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 124
    return-void
.end method

.method public setOnCallLogActionListener(Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/weirdvoice/ui/calllog/CallLogAdapter$OnCallLogAction;

    .line 68
    return-void
.end method

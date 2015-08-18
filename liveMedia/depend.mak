###############################################
#
# app/ipcam/rtsp/livemedia/depend.mk
#
# 2010/02/03 - [Jian Tang] created file
#
# Copyright (C) 2010, Ambarella, Inc.
#
# All rights reserved. No Part of this file may be reproduced, stored
# in a retrieval system, or transmitted, in any form, or by any means,
# electronic, mechanical, photocopying, recording, or otherwise,
# without the prior consent of Ambarella, Inc.
#
###############################################



################ Local objects:

MP3_SOURCE_OBJS = $(OUTDIR)/MP3FileSource.$(OBJ) $(OUTDIR)/MP3HTTPSource.$(OBJ) $(OUTDIR)/MP3Transcoder.$(OBJ) $(OUTDIR)/MP3ADU.$(OBJ) \
	$(OUTDIR)/MP3ADUdescriptor.$(OBJ) $(OUTDIR)/MP3ADUinterleaving.$(OBJ) $(OUTDIR)/MP3ADUTranscoder.$(OBJ) $(OUTDIR)/MP3StreamState.$(OBJ) \
	$(OUTDIR)/MP3Internals.$(OBJ) $(OUTDIR)/MP3InternalsHuffman.$(OBJ) $(OUTDIR)/MP3InternalsHuffmanTable.$(OBJ) $(OUTDIR)/MP3ADURTPSource.$(OBJ)
MPEG_SOURCE_OBJS = $(OUTDIR)/MPEG1or2Demux.$(OBJ) $(OUTDIR)/MPEG1or2DemuxedElementaryStream.$(OBJ) $(OUTDIR)/MPEGVideoStreamFramer.$(OBJ) \
	$(OUTDIR)/MPEG1or2VideoStreamFramer.$(OBJ) $(OUTDIR)/MPEG1or2VideoStreamDiscreteFramer.$(OBJ) $(OUTDIR)/MPEG4VideoStreamFramer.$(OBJ) \
	$(OUTDIR)/MPEG4VideoStreamDiscreteFramer.$(OBJ) $(OUTDIR)/H264VideoStreamFramer.$(OBJ) $(OUTDIR)/MPEGVideoStreamParser.$(OBJ) \
	$(OUTDIR)/MPEG1or2AudioStreamFramer.$(OBJ) $(OUTDIR)/MPEG1or2AudioRTPSource.$(OBJ) $(OUTDIR)/MPEG4LATMAudioRTPSource.$(OBJ) \
	$(OUTDIR)/MPEG4ESVideoRTPSource.$(OBJ) $(OUTDIR)/MPEG4GenericRTPSource.$(OBJ) $(MP3_SOURCE_OBJS) \
	$(OUTDIR)/MPEG1or2VideoRTPSource.$(OBJ) $(OUTDIR)/MPEG2TransportStreamMultiplexor.$(OBJ) $(OUTDIR)/MPEG2TransportStreamFromPESSource.$(OBJ) \
	$(OUTDIR)/MPEG2TransportStreamFromESSource.$(OBJ) $(OUTDIR)/MPEG2TransportStreamFramer.$(OBJ) $(OUTDIR)/ADTSAudioFileSource.$(OBJ)
H263_SOURCE_OBJS = $(OUTDIR)/H263plusVideoRTPSource.$(OBJ) $(OUTDIR)/H263plusVideoStreamFramer.$(OBJ) \
	$(OUTDIR)/H263plusVideoStreamParser.$(OBJ)
AC3_SOURCE_OBJS = $(OUTDIR)/AC3AudioStreamFramer.$(OBJ) $(OUTDIR)/AC3AudioRTPSource.$(OBJ)
DV_SOURCE_OBJS = $(OUTDIR)/DVVideoStreamFramer.$(OBJ) $(OUTDIR)/DVVideoRTPSource.$(OBJ)
MP3_SINK_OBJS = $(OUTDIR)/MP3ADURTPSink.$(OBJ)
MPEG_SINK_OBJS = $(OUTDIR)/MPEG1or2AudioRTPSink.$(OBJ) $(MP3_SINK_OBJS) $(OUTDIR)/MPEG1or2VideoRTPSink.$(OBJ) $(OUTDIR)/MPEG1or2VideoHTTPSink.$(OBJ) \
	$(OUTDIR)/MPEG4LATMAudioRTPSink.$(OBJ) $(OUTDIR)/MPEG4GenericRTPSink.$(OBJ) $(OUTDIR)/MPEG4ESVideoRTPSink.$(OBJ)
H263_SINK_OBJS = $(OUTDIR)/H263plusVideoRTPSink.$(OBJ)
H264_SINK_OBJS = $(OUTDIR)/H264VideoRTPSink.$(OBJ)
DV_SINK_OBJS = $(OUTDIR)/DVVideoRTPSink.$(OBJ)
AC3_SINK_OBJS = $(OUTDIR)/AC3AudioRTPSink.$(OBJ)

MISC_SOURCE_OBJS = $(OUTDIR)/MediaSource.$(OBJ) $(OUTDIR)/FramedSource.$(OBJ) $(OUTDIR)/FramedFileSource.$(OBJ) \
	$(OUTDIR)/FramedFilter.$(OBJ) $(OUTDIR)/ByteStreamFileSource.$(OBJ) $(OUTDIR)/ByteStreamMultiFileSource.$(OBJ) \
	$(OUTDIR)/BasicUDPSource.$(OBJ) $(OUTDIR)/DeviceSource.$(OBJ) $(OUTDIR)/AudioInputDevice.$(OBJ) \
	$(OUTDIR)/WAVAudioFileSource.$(OBJ) $(MPEG_SOURCE_OBJS) $(H263_SOURCE_OBJS) $(AC3_SOURCE_OBJS) $(DV_SOURCE_OBJS) \
	$(OUTDIR)/JPEGVideoSource.$(OBJ) $(OUTDIR)/AMRAudioSource.$(OBJ) $(OUTDIR)/AMRAudioFileSource.$(OBJ) \
	$(OUTDIR)/InputFile.$(OBJ)
MISC_SINK_OBJS = $(OUTDIR)/MediaSink.$(OBJ) $(OUTDIR)/FileSink.$(OBJ) $(OUTDIR)/BasicUDPSink.$(OBJ) \
	$(OUTDIR)/AMRAudioFileSink.$(OBJ) $(OUTDIR)/H264VideoFileSink.$(OBJ) $(OUTDIR)/HTTPSink.$(OBJ) \
	$(MPEG_SINK_OBJS) $(H263_SINK_OBJS) $(H264_SINK_OBJS) $(DV_SINK_OBJS) $(AC3_SINK_OBJS) \
	$(OUTDIR)/GSMAudioRTPSink.$(OBJ) $(OUTDIR)/JPEGVideoRTPSink.$(OBJ) $(OUTDIR)/SimpleRTPSink.$(OBJ) \
	$(OUTDIR)/AMRAudioRTPSink.$(OBJ) $(OUTDIR)/OutputFile.$(OBJ)
MISC_FILTER_OBJS = $(OUTDIR)/uLawAudioFilter.$(OBJ)
TRANSPORT_STREAM_TRICK_PLAY_OBJS = $(OUTDIR)/MPEG2IndexFromTransportStream.$(OBJ) $(OUTDIR)/MPEG2TransportStreamIndexFile.$(OBJ) \
	$(OUTDIR)/MPEG2TransportStreamTrickModeFilter.$(OBJ)

RTP_SOURCE_OBJS = $(OUTDIR)/RTPSource.$(OBJ) $(OUTDIR)/MultiFramedRTPSource.$(OBJ) $(OUTDIR)/SimpleRTPSource.$(OBJ) \
	$(OUTDIR)/H261VideoRTPSource.$(OBJ) $(OUTDIR)/H264VideoRTPSource.$(OBJ) $(OUTDIR)/QCELPAudioRTPSource.$(OBJ) \
	$(OUTDIR)/AMRAudioRTPSource.$(OBJ) $(OUTDIR)/JPEGVideoRTPSource.$(OBJ)
RTP_SINK_OBJS = $(OUTDIR)/RTPSink.$(OBJ) $(OUTDIR)/MultiFramedRTPSink.$(OBJ) $(OUTDIR)/AudioRTPSink.$(OBJ) \
	$(OUTDIR)/VideoRTPSink.$(OBJ)
RTP_INTERFACE_OBJS = $(OUTDIR)/RTPInterface.$(OBJ)
RTP_OBJS = $(RTP_SOURCE_OBJS) $(RTP_SINK_OBJS) $(RTP_INTERFACE_OBJS)

RTCP_OBJS = $(OUTDIR)/RTCP.$(OBJ) $(OUTDIR)/rtcp_from_spec.$(OBJ)
RTSP_OBJS = $(OUTDIR)/RTSPServer.$(OBJ) $(OUTDIR)/RTSPOverHTTPServer.$(OBJ) $(OUTDIR)/RTSPClient.$(OBJ) $(OUTDIR)/RTSPCommon.$(OBJ)
SIP_OBJS = $(OUTDIR)/SIPClient.$(OBJ)

SESSION_OBJS = $(OUTDIR)/MediaSession.$(OBJ) $(OUTDIR)/ServerMediaSession.$(OBJ) $(OUTDIR)/PassiveServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/OnDemandServerMediaSubsession.$(OBJ) $(OUTDIR)/FileServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/MPEG4VideoFileServerMediaSubsession.$(OBJ) $(OUTDIR)/H263plusVideoFileServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/WAVAudioFileServerMediaSubsession.$(OBJ) $(OUTDIR)/AMRAudioFileServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/MP3AudioFileServerMediaSubsession.$(OBJ) $(OUTDIR)/MPEG1or2VideoFileServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/MPEG1or2FileServerDemux.$(OBJ) $(OUTDIR)/MPEG1or2DemuxedServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/MPEG2TransportFileServerMediaSubsession.$(OBJ) $(OUTDIR)/ADTSAudioFileServerMediaSubsession.$(OBJ) \
	$(OUTDIR)/DVVideoFileServerMediaSubsession.$(OBJ)

QUICKTIME_OBJS = $(OUTDIR)/QuickTimeFileSink.$(OBJ) $(OUTDIR)/QuickTimeGenericRTPSource.$(OBJ)
AVI_OBJS = $(OUTDIR)/AVIFileSink.$(OBJ)

MISC_OBJS = $(OUTDIR)/DarwinInjector.$(OBJ) $(OUTDIR)/BitVector.$(OBJ) $(OUTDIR)/StreamParser.$(OBJ) \
	$(OUTDIR)/DigestAuthentication.$(OBJ) $(OUTDIR)/our_md5.$(OBJ) $(OUTDIR)/our_md5hl.$(OBJ) \
	$(OUTDIR)/Base64.$(OBJ) $(OUTDIR)/Locale.$(OBJ)

MODULE_OBJS =  $(OUTDIR)/Media.$(OBJ) $(MISC_SOURCE_OBJS) $(MISC_SINK_OBJS) \
			$(MISC_FILTER_OBJS) $(RTP_OBJS) $(RTCP_OBJS) $(RTSP_OBJS) \
			$(SIP_OBJS) $(SESSION_OBJS) $(QUICKTIME_OBJS) $(AVI_OBJS) \
			$(TRANSPORT_STREAM_TRICK_PLAY_OBJS) $(MISC_OBJS)

################ End of local objects:

################ Local dependence:

Media.$(CPP):		include/Media.hh
include/Media.hh:	include/liveMedia_version.hh
MediaSource.$(CPP):	include/MediaSource.hh
include/MediaSource.hh:		include/Media.hh
FramedSource.$(CPP):	include/FramedSource.hh
include/FramedSource.hh:	include/MediaSource.hh
FramedFileSource.$(CPP): include/FramedFileSource.hh
include/FramedFileSource.hh:	include/FramedSource.hh
FramedFilter.$(CPP):	include/FramedFilter.hh
include/FramedFilter.hh:	include/FramedSource.hh
RTPSource.$(CPP):	include/RTPSource.hh
include/RTPSource.hh:		include/FramedSource.hh include/RTPInterface.hh
include/RTPInterface.hh:	include/Media.hh
MultiFramedRTPSource.$(CPP):	include/MultiFramedRTPSource.hh
include/MultiFramedRTPSource.hh:	include/RTPSource.hh
SimpleRTPSource.$(CPP):	include/SimpleRTPSource.hh
include/SimpleRTPSource.hh:	include/MultiFramedRTPSource.hh
H261VideoRTPSource.$(CPP):	include/H261VideoRTPSource.hh
include/H261VideoRTPSource.hh:	include/MultiFramedRTPSource.hh
H264VideoRTPSource.$(CPP):      include/H264VideoRTPSource.hh include/Base64.hh
include/H264VideoRTPSource.hh:  include/MultiFramedRTPSource.hh
QCELPAudioRTPSource.$(CPP):	include/QCELPAudioRTPSource.hh include/MultiFramedRTPSource.hh include/FramedFilter.hh
include/QCELPAudioRTPSource.hh:		include/RTPSource.hh
AMRAudioRTPSource.$(CPP):	include/AMRAudioRTPSource.hh include/MultiFramedRTPSource.hh
include/AMRAudioRTPSource.hh:		include/RTPSource.hh include/AMRAudioSource.hh
JPEGVideoRTPSource.$(CPP):	include/JPEGVideoRTPSource.hh
include/JPEGVideoRTPSource.hh:	include/MultiFramedRTPSource.hh
ByteStreamFileSource.$(CPP):	include/ByteStreamFileSource.hh include/InputFile.hh
include/ByteStreamFileSource.hh:	include/FramedFileSource.hh
ByteStreamMultiFileSource.$(CPP):	include/ByteStreamMultiFileSource.hh
include/ByteStreamMultiFileSource.hh:	include/ByteStreamFileSource.hh
BasicUDPSource.$(CPP):		include/BasicUDPSource.hh
include/BasicUDPSource.hh:	include/FramedSource.hh
DeviceSource.$(CPP):	include/DeviceSource.hh
include/DeviceSource.hh:	include/FramedSource.hh
AudioInputDevice.$(CPP):	include/AudioInputDevice.hh
include/AudioInputDevice.hh:	include/FramedSource.hh
WAVAudioFileSource.$(CPP):	include/WAVAudioFileSource.hh include/InputFile.hh
include/WAVAudioFileSource.hh:	include/AudioInputDevice.hh
MPEG1or2Demux.$(CPP):	include/MPEG1or2Demux.hh include/MPEG1or2DemuxedElementaryStream.hh StreamParser.hh
include/MPEG1or2Demux.hh:		include/FramedSource.hh
include/MPEG1or2DemuxedElementaryStream.hh:	include/MPEG1or2Demux.hh
StreamParser.hh:	include/FramedSource.hh
MPEG1or2DemuxedElementaryStream.$(CPP):	include/MPEG1or2DemuxedElementaryStream.hh
MPEGVideoStreamFramer.$(CPP):	MPEGVideoStreamParser.hh
MPEGVideoStreamParser.hh:	StreamParser.hh include/MPEGVideoStreamFramer.hh
include/MPEGVideoStreamFramer.hh:	include/FramedFilter.hh
MPEG1or2VideoStreamFramer.$(CPP):	include/MPEG1or2VideoStreamFramer.hh MPEGVideoStreamParser.hh
include/MPEG1or2VideoStreamFramer.hh:	include/MPEGVideoStreamFramer.hh
MPEG1or2VideoStreamDiscreteFramer.$(CPP):	include/MPEG1or2VideoStreamDiscreteFramer.hh
include/MPEG1or2VideoStreamDiscreteFramer.hh:	include/MPEG1or2VideoStreamFramer.hh
MPEG4VideoStreamFramer.$(CPP):	include/MPEG4VideoStreamFramer.hh MPEGVideoStreamParser.hh
include/MPEG4VideoStreamFramer.hh:	include/MPEGVideoStreamFramer.hh
MPEG4VideoStreamDiscreteFramer.$(CPP):	include/MPEG4VideoStreamDiscreteFramer.hh
include/MPEG4VideoStreamDiscreteFramer.hh:	include/MPEG4VideoStreamFramer.hh
H264VideoStreamFramer.$(CPP):	include/H264VideoStreamFramer.hh
include/H264VideoStreamFramer.hh:	include/FramedFilter.hh
MPEGVideoStreamParser.$(CPP):	MPEGVideoStreamParser.hh
MPEG1or2AudioStreamFramer.$(CPP):	include/MPEG1or2AudioStreamFramer.hh StreamParser.hh MP3Internals.hh
include/MPEG1or2AudioStreamFramer.hh:	include/FramedFilter.hh
MPEG1or2AudioRTPSource.$(CPP):	include/MPEG1or2AudioRTPSource.hh
include/MPEG1or2AudioRTPSource.hh:	include/MultiFramedRTPSource.hh
MPEG4LATMAudioRTPSource.$(CPP):	include/MPEG4LATMAudioRTPSource.hh
include/MPEG4LATMAudioRTPSource.hh:	include/MultiFramedRTPSource.hh
MPEG4ESVideoRTPSource.$(CPP):	include/MPEG4ESVideoRTPSource.hh
include/MPEG4ESVideoRTPSource.hh:	include/MultiFramedRTPSource.hh
MPEG4GenericRTPSource.$(CPP):	include/MPEG4GenericRTPSource.hh BitVector.hh include/MPEG4LATMAudioRTPSource.hh
include/MPEG4GenericRTPSource.hh:	include/MultiFramedRTPSource.hh
MP3FileSource.$(CPP):	include/MP3FileSource.hh MP3StreamState.hh include/InputFile.hh
include/MP3FileSource.hh:	include/FramedFileSource.hh
MP3StreamState.hh:	MP3Internals.hh
MP3Internals.hh:	BitVector.hh
MP3HTTPSource.$(CPP):	include/MP3HTTPSource.hh MP3StreamState.hh
include/MP3HTTPSource.hh:	include/MP3FileSource.hh
MP3Transcoder.$(CPP):	include/MP3ADU.hh include/MP3Transcoder.hh
include/MP3ADU.hh:		include/FramedFilter.hh
include/MP3Transcoder.hh:	include/MP3ADU.hh include/MP3ADUTranscoder.hh
include/MP3ADUTranscoder.hh:	include/FramedFilter.hh
MP3ADU.$(CPP):		include/MP3ADU.hh MP3ADUdescriptor.hh MP3Internals.hh
MP3ADUdescriptor.$(CPP):	MP3ADUdescriptor.hh
MP3ADUinterleaving.$(CPP):	include/MP3ADUinterleaving.hh MP3ADUdescriptor.hh
include/MP3ADUinterleaving.hh:	include/FramedFilter.hh
MP3ADUTranscoder.$(CPP):	include/MP3ADUTranscoder.hh MP3Internals.hh
MP3StreamState.$(CPP):	MP3StreamState.hh
MP3Internals.$(CPP):	MP3InternalsHuffman.hh
MP3InternalsHuffman.hh:	MP3Internals.hh
MP3InternalsHuffman.$(CPP):	MP3InternalsHuffman.hh
MP3InternalsHuffmanTable.$(CPP):	MP3InternalsHuffman.hh
MP3ADURTPSource.$(CPP):	include/MP3ADURTPSource.hh MP3ADUdescriptor.hh
include/MP3ADURTPSource.hh:	include/MultiFramedRTPSource.hh
MPEG1or2VideoRTPSource.$(CPP):	include/MPEG1or2VideoRTPSource.hh
include/MPEG1or2VideoRTPSource.hh:	include/MultiFramedRTPSource.hh
MPEG2TransportStreamMultiplexor.$(CPP):	include/MPEG2TransportStreamMultiplexor.hh
include/MPEG2TransportStreamMultiplexor.hh:	include/FramedSource.hh include/MPEG1or2Demux.hh
MPEG2TransportStreamFromPESSource.$(CPP):	include/MPEG2TransportStreamFromPESSource.hh
include/MPEG2TransportStreamFromPESSource.hh:	include/MPEG2TransportStreamMultiplexor.hh include/MPEG1or2DemuxedElementaryStream.hh
MPEG2TransportStreamFromESSource.$(CPP):	include/MPEG2TransportStreamFromESSource.hh
include/MPEG2TransportStreamFromESSource.hh:	include/MPEG2TransportStreamMultiplexor.hh
MPEG2TransportStreamFramer.$(CPP):	include/MPEG2TransportStreamFramer.hh
include/MPEG2TransportStreamFramer.hh:	include/FramedFilter.hh
ADTSAudioFileSource.$(CPP):	include/ADTSAudioFileSource.hh include/InputFile.hh
include/ADTSAudioFileSource.hh:	include/FramedFileSource.hh
H263plusVideoRTPSource.$(CPP):	include/H263plusVideoRTPSource.hh
include/H263plusVideoRTPSource.hh:	include/MultiFramedRTPSource.hh
H263plusVideoStreamFramer.$(CPP):	include/H263plusVideoStreamFramer.hh H263plusVideoStreamParser.hh
include/H263plusVideoStreamFramer.hh:	include/FramedFilter.hh
H263plusVideoStreamParser.hh:	StreamParser.hh
H263plusVideoStreamParser.$(CPP):	H263plusVideoStreamParser.hh include/H263plusVideoStreamFramer.hh
AC3AudioStreamFramer.$(CPP):	include/AC3AudioStreamFramer.hh StreamParser.hh
include/AC3AudioStreamFramer.hh:	include/FramedFilter.hh
AC3AudioRTPSource.$(CPP):	include/AC3AudioRTPSource.hh
include/AC3AudioRTPSource.hh:	include/MultiFramedRTPSource.hh
DVVideoRTPSource.$(CPP):	include/DVVideoRTPSource.hh
include/DVVideoRTPSource.hh:	include/MultiFramedRTPSource.hh
JPEGVideoSource.$(CPP):		include/JPEGVideoSource.hh
include/JPEGVideoSource.hh:	include/FramedSource.hh
AMRAudioSource.$(CPP):	include/AMRAudioSource.hh
include/AMRAudioSource.hh:	include/FramedSource.hh
AMRAudioFileSource.$(CPP):	include/AMRAudioFileSource.hh include/InputFile.hh
include/AMRAudioFileSource.hh:	include/AMRAudioSource.hh
InputFile.$(CPP):		include/InputFile.hh
MediaSink.$(CPP):	include/MediaSink.hh
include/MediaSink.hh:		include/FramedSource.hh
FileSink.$(CPP):	include/FileSink.hh include/OutputFile.hh
include/FileSink.hh:		include/MediaSink.hh
BasicUDPSink.$(CPP):	include/BasicUDPSink.hh
include/BasicUDPSink.hh:	include/MediaSink.hh
AMRAudioFileSink.$(CPP):	include/AMRAudioFileSink.hh include/AMRAudioSource.hh include/OutputFile.hh
include/AMRAudioFileSink.hh:	include/FileSink.hh
H264VideoFileSink.$(CPP):       include/H264VideoFileSink.hh include/OutputFile.hh
include/H264VideoFileSink.hh:   include/FileSink.hh
HTTPSink.$(CPP):	include/HTTPSink.hh
include/HTTPSink.hh:		include/MediaSink.hh
RTPSink.$(CPP):		include/RTPSink.hh
include/RTPSink.hh:		include/MediaSink.hh include/RTPInterface.hh
MultiFramedRTPSink.$(CPP):	include/MultiFramedRTPSink.hh
include/MultiFramedRTPSink.hh:		include/RTPSink.hh
AudioRTPSink.$(CPP):		include/AudioRTPSink.hh
include/AudioRTPSink.hh:	include/MultiFramedRTPSink.hh
VideoRTPSink.$(CPP):		include/VideoRTPSink.hh
include/VideoRTPSink.hh:	include/MultiFramedRTPSink.hh
RTPInterface.$(CPP):		include/RTPInterface.hh
MPEG1or2AudioRTPSink.$(CPP):	include/MPEG1or2AudioRTPSink.hh
include/MPEG1or2AudioRTPSink.hh:	include/AudioRTPSink.hh
MP3ADURTPSink.$(CPP):	include/MP3ADURTPSink.hh
include/MP3ADURTPSink.hh:	include/AudioRTPSink.hh
MPEG1or2VideoRTPSink.$(CPP):	include/MPEG1or2VideoRTPSink.hh include/MPEG1or2VideoStreamFramer.hh
include/MPEG1or2VideoRTPSink.hh:	include/VideoRTPSink.hh
MPEG1or2VideoHTTPSink.$(CPP):	include/MPEG1or2VideoHTTPSink.hh
include/MPEG1or2VideoHTTPSink.hh:	include/HTTPSink.hh
MPEG4LATMAudioRTPSink.$(CPP):	include/MPEG4LATMAudioRTPSink.hh
include/MPEG4LATMAudioRTPSink.hh:	include/AudioRTPSink.hh
MPEG4GenericRTPSink.$(CPP):	include/MPEG4GenericRTPSink.hh
include/MPEG4GenericRTPSink.hh:	include/MultiFramedRTPSink.hh
MPEG4ESVideoRTPSink.$(CPP):	include/MPEG4ESVideoRTPSink.hh include/MPEG4VideoStreamFramer.hh
include/MPEG4ESVideoRTPSink.hh: include/VideoRTPSink.hh
H263plusVideoRTPSink.$(CPP):	include/H263plusVideoRTPSink.hh
include/H263plusVideoRTPSink.hh:	include/VideoRTPSink.hh
H264VideoRTPSink.$(CPP):	include/H264VideoRTPSink.hh include/H264VideoStreamFramer.hh
include/H264VideoRTPSink.hh:	include/VideoRTPSink.hh include/FramedFilter.hh
DVVideoRTPSink.$(CPP):	include/DVVideoRTPSink.hh
include/DVVideoRTPSink.hh:	include/VideoRTPSink.hh include/DVVideoStreamFramer.hh
include/DVVideoStreamFramer.hh:	include/FramedFilter.hh
AC3AudioRTPSink.$(CPP):	include/AC3AudioRTPSink.hh
include/AC3AudioRTPSink.hh:	include/AudioRTPSink.hh
GSMAudioRTPSink.$(CPP):		include/GSMAudioRTPSink.hh
include/GSMAudioRTPSink.hh:	include/AudioRTPSink.hh
JPEGVideoRTPSink.$(CPP):	include/JPEGVideoRTPSink.hh include/JPEGVideoSource.hh
include/JPEGVideoRTPSink.hh:	include/VideoRTPSink.hh
SimpleRTPSink.$(CPP):		include/SimpleRTPSink.hh
include/SimpleRTPSink.hh:	include/MultiFramedRTPSink.hh
AMRAudioRTPSink.$(CPP):		include/AMRAudioRTPSink.hh include/AMRAudioSource.hh
include/AMRAudioRTPSink.hh:	include/AudioRTPSink.hh
OutputFile.$(CPP):		include/OutputFile.hh
uLawAudioFilter.$(CPP):		include/uLawAudioFilter.hh
include/uLawAudioFilter.hh:	include/FramedFilter.hh
MPEG2IndexFromTransportStream.$(CPP):	include/MPEG2IndexFromTransportStream.hh
include/MPEG2IndexFromTransportStream.hh:	include/FramedFilter.hh
MPEG2TransportStreamIndexFile.$(CPP):	include/MPEG2TransportStreamIndexFile.hh include/InputFile.hh
include/MPEG2TransportStreamIndexFile.hh:	include/Media.hh
MPEG2TransportStreamTrickModeFilter.$(CPP):	include/MPEG2TransportStreamTrickModeFilter.hh include/ByteStreamFileSource.hh
include/MPEG2TransportStreamTrickModeFilter.hh:	include/FramedFilter.hh include/MPEG2TransportStreamIndexFile.hh
RTCP.$(CPP):		include/RTCP.hh rtcp_from_spec.h
include/RTCP.hh:		include/RTPSink.hh include/RTPSource.hh
rtcp_from_spec.$(C):	rtcp_from_spec.h
RTSPServer.$(CPP):	include/RTSPServer.hh include/RTSPCommon.hh
include/RTSPServer.hh:		include/ServerMediaSession.hh include/DigestAuthentication.hh include/RTSPCommon.hh
include/ServerMediaSession.hh:	include/Media.hh include/RTSPCommon.hh
RTSPOverHTTPServer.$(CPP):	include/RTSPOverHTTPServer.hh include/RTSPCommon.hh
include/RTSPOverHTTPServer.hh:	include/Media.hh
RTSPClient.$(CPP):	include/RTSPClient.hh  include/RTSPCommon.hh include/Base64.hh include/Locale.hh our_md5.h
include/RTSPClient.hh:		include/MediaSession.hh include/DigestAuthentication.hh
RTSPCommon.$(CPP):	include/RTSPCommon.hh include/Locale.hh
SIPClient.$(CPP):	include/SIPClient.hh
include/SIPClient.hh:		include/MediaSession.hh include/DigestAuthentication.hh
MediaSession.$(CPP):	include/liveMedia.hh include/Locale.hh
include/MediaSession.hh:	include/RTCP.hh
ServerMediaSession.$(CPP):	include/ServerMediaSession.hh
PassiveServerMediaSubsession.$(CPP):	include/PassiveServerMediaSubsession.hh
include/PassiveServerMediaSubsession.hh:	include/ServerMediaSession.hh include/RTPSink.hh include/RTCP.hh
OnDemandServerMediaSubsession.$(CPP):	include/OnDemandServerMediaSubsession.hh include/RTCP.hh
include/OnDemandServerMediaSubsession.hh:	include/ServerMediaSession.hh include/RTPSink.hh
FileServerMediaSubsession.$(CPP):	include/FileServerMediaSubsession.hh
include/FileServerMediaSubsession.hh:	include/OnDemandServerMediaSubsession.hh
MPEG4VideoFileServerMediaSubsession.$(CPP):	include/MPEG4VideoFileServerMediaSubsession.hh include/MPEG4ESVideoRTPSink.hh include/ByteStreamFileSource.hh include/MPEG4VideoStreamFramer.hh
include/MPEG4VideoFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
H263plusVideoFileServerMediaSubsession.$(CPP):	include/H263plusVideoFileServerMediaSubsession.hh include/H263plusVideoRTPSink.hh include/ByteStreamFileSource.hh include/H263plusVideoStreamFramer.hh
include/H263plusVideoFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
WAVAudioFileServerMediaSubsession.$(CPP):	include/WAVAudioFileServerMediaSubsession.hh include/WAVAudioFileSource.hh include/uLawAudioFilter.hh include/SimpleRTPSink.hh
include/WAVAudioFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
AMRAudioFileServerMediaSubsession.$(CPP):	include/AMRAudioFileServerMediaSubsession.hh include/AMRAudioRTPSink.hh include/AMRAudioFileSource.hh
include/AMRAudioFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
MP3AudioFileServerMediaSubsession.$(CPP):	include/MP3AudioFileServerMediaSubsession.hh include/MPEG1or2AudioRTPSink.hh include/MP3ADURTPSink.hh include/MP3FileSource.hh include/MP3ADU.hh
include/MP3AudioFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh include/MP3ADUinterleaving.hh
MPEG1or2VideoFileServerMediaSubsession.$(CPP):	include/MPEG1or2VideoFileServerMediaSubsession.hh include/MPEG1or2VideoRTPSink.hh include/ByteStreamFileSource.hh include/MPEG1or2VideoStreamFramer.hh
include/MPEG1or2VideoFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
MPEG1or2FileServerDemux.$(CPP):	include/MPEG1or2FileServerDemux.hh include/MPEG1or2DemuxedServerMediaSubsession.hh include/ByteStreamFileSource.hh
include/MPEG1or2FileServerDemux.hh:	include/ServerMediaSession.hh include/MPEG1or2DemuxedElementaryStream.hh
MPEG1or2DemuxedServerMediaSubsession.$(CPP): include/MPEG1or2DemuxedServerMediaSubsession.hh include/MPEG1or2AudioStreamFramer.hh include/MPEG1or2AudioRTPSink.hh include/MPEG1or2VideoStreamFramer.hh include/MPEG1or2VideoRTPSink.hh include/AC3AudioStreamFramer.hh include/AC3AudioRTPSink.hh include/ByteStreamFileSource.hh
include/MPEG1or2DemuxedServerMediaSubsession.hh: include/OnDemandServerMediaSubsession.hh include/MPEG1or2FileServerDemux.hh
MPEG2TransportFileServerMediaSubsession.$(CPP):	include/MPEG2TransportFileServerMediaSubsession.hh include/SimpleRTPSink.hh include/ByteStreamFileSource.hh include/MPEG2TransportStreamTrickModeFilter.hh include/MPEG2TransportStreamFromESSource.hh include/MPEG2TransportStreamFramer.hh
include/MPEG2TransportFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh include/MPEG2TransportStreamIndexFile.hh
ADTSAudioFileServerMediaSubsession.$(CPP):	include/ADTSAudioFileServerMediaSubsession.hh include/ADTSAudioFileSource.hh include/MPEG4GenericRTPSink.hh
include/ADTSAudioFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
DVVideoFileServerMediaSubsession.$(CPP):	include/DVVideoFileServerMediaSubsession.hh include/DVVideoRTPSink.hh include/ByteStreamFileSource.hh include/DVVideoStreamFramer.hh
include/DVVideoFileServerMediaSubsession.hh:	include/FileServerMediaSubsession.hh
QuickTimeFileSink.$(CPP):	include/QuickTimeFileSink.hh include/OutputFile.hh include/QuickTimeGenericRTPSource.hh include/H263plusVideoRTPSource.hh include/MPEG4GenericRTPSource.hh include/MPEG4LATMAudioRTPSource.hh
include/QuickTimeFileSink.hh:	include/MediaSession.hh
QuickTimeGenericRTPSource.$(CPP):	include/QuickTimeGenericRTPSource.hh
include/QuickTimeGenericRTPSource.hh:	include/MultiFramedRTPSource.hh
DarwinInjector.$(CPP):	include/DarwinInjector.hh
include/DarwinInjector.hh:	include/RTSPClient.hh include/RTCP.hh
AVIFileSink.$(CPP):	include/AVIFileSink.hh include/OutputFile.hh
include/AVIFileSink.hh:	include/MediaSession.hh
BitVector.$(CPP):	BitVector.hh
StreamParser.$(CPP):	StreamParser.hh
DigestAuthentication.$(CPP):	include/DigestAuthentication.hh our_md5.h
our_md5.$(C):		our_md5.h
our_md5hl.$(C):		our_md5.h
Base64.$(CPP):	include/Base64.hh
Locale.$(CPP):	include/Locale.hh

include/liveMedia.hh:: include/MPEG1or2AudioRTPSink.hh include/MP3ADURTPSink.hh include/MPEG1or2VideoRTPSink.hh include/MPEG4ESVideoRTPSink.hh include/BasicUDPSink.hh include/AMRAudioFileSink.hh include/H264VideoFileSink.hh include/MPEG1or2VideoHTTPSink.hh include/GSMAudioRTPSink.hh include/H263plusVideoRTPSink.hh include/H264VideoRTPSink.hh include/DVVideoRTPSource.hh include/DVVideoRTPSink.hh include/DVVideoStreamFramer.hh include/H264VideoStreamFramer.hh include/JPEGVideoRTPSink.hh include/SimpleRTPSink.hh include/uLawAudioFilter.hh include/MPEG2IndexFromTransportStream.hh include/MPEG2TransportStreamTrickModeFilter.hh include/ByteStreamFileSource.hh include/BasicUDPSource.hh include/SimpleRTPSource.hh include/MPEG1or2AudioRTPSource.hh include/MPEG4LATMAudioRTPSource.hh include/MPEG4LATMAudioRTPSink.hh include/MPEG4ESVideoRTPSource.hh include/MPEG4GenericRTPSource.hh include/MP3ADURTPSource.hh include/QCELPAudioRTPSource.hh include/AMRAudioRTPSource.hh include/JPEGVideoRTPSource.hh include/MPEG1or2VideoRTPSource.hh

include/liveMedia.hh::	include/MPEG2TransportStreamFromPESSource.hh include/MPEG2TransportStreamFromESSource.hh include/MPEG2TransportStreamFramer.hh include/ADTSAudioFileSource.hh include/H261VideoRTPSource.hh include/H263plusVideoRTPSource.hh include/H264VideoRTPSource.hh include/MP3HTTPSource.hh include/MP3ADU.hh include/MP3ADUinterleaving.hh include/MP3Transcoder.hh include/MPEG1or2DemuxedElementaryStream.hh include/MPEG1or2AudioStreamFramer.hh include/MPEG1or2VideoStreamDiscreteFramer.hh include/MPEG4VideoStreamDiscreteFramer.hh include/H263plusVideoStreamFramer.hh include/AC3AudioStreamFramer.hh include/AC3AudioRTPSource.hh include/AC3AudioRTPSink.hh include/MPEG4GenericRTPSink.hh include/DeviceSource.hh include/AudioInputDevice.hh include/WAVAudioFileSource.hh

include/liveMedia.hh:: include/RTSPServer.hh include/RTSPOverHTTPServer.hh include/RTSPClient.hh include/SIPClient.hh include/QuickTimeFileSink.hh include/QuickTimeGenericRTPSource.hh include/AVIFileSink.hh include/PassiveServerMediaSubsession.hh include/MPEG4VideoFileServerMediaSubsession.hh include/WAVAudioFileServerMediaSubsession.hh include/AMRAudioFileServerMediaSubsession.hh include/AMRAudioFileSource.hh include/AMRAudioRTPSink.hh include/MP3AudioFileServerMediaSubsession.hh include/MPEG1or2VideoFileServerMediaSubsession.hh include/MPEG1or2FileServerDemux.hh include/MPEG2TransportFileServerMediaSubsession.hh include/H263plusVideoFileServerMediaSubsession.hh include/ADTSAudioFileServerMediaSubsession.hh include/DVVideoFileServerMediaSubsession.hh include/DarwinInjector.hh

################ End of local dependence:


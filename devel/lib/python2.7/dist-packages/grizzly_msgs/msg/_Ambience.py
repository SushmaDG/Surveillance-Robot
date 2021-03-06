# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from grizzly_msgs/Ambience.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Ambience(genpy.Message):
  _md5sum = "61f98d62162f451c695060a2c339b6b0"
  _type = "grizzly_msgs/Ambience"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 PATTERN_ON=255
uint8 PATTERN_FLASH=15
uint8 PATTERN_DFLASH=9
uint8 PATTERN_QUICKFLASH=1
uint8 PATTERN_OFF=0

uint8 position_light    # Signal the status of the GPS system
uint8 autopilot_light   # Signal if the system is under automatic or manual control
uint8 beacon     # Overhead beacon flash pattern
uint8 headlight  # Headlight flash pattern
uint8 taillight  # Taillight flash pattern
uint8 beep   # Noisemaker sound pattern
"""
  # Pseudo-constants
  PATTERN_ON = 255
  PATTERN_FLASH = 15
  PATTERN_DFLASH = 9
  PATTERN_QUICKFLASH = 1
  PATTERN_OFF = 0

  __slots__ = ['position_light','autopilot_light','beacon','headlight','taillight','beep']
  _slot_types = ['uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position_light,autopilot_light,beacon,headlight,taillight,beep

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Ambience, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position_light is None:
        self.position_light = 0
      if self.autopilot_light is None:
        self.autopilot_light = 0
      if self.beacon is None:
        self.beacon = 0
      if self.headlight is None:
        self.headlight = 0
      if self.taillight is None:
        self.taillight = 0
      if self.beep is None:
        self.beep = 0
    else:
      self.position_light = 0
      self.autopilot_light = 0
      self.beacon = 0
      self.headlight = 0
      self.taillight = 0
      self.beep = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6B().pack(_x.position_light, _x.autopilot_light, _x.beacon, _x.headlight, _x.taillight, _x.beep))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.position_light, _x.autopilot_light, _x.beacon, _x.headlight, _x.taillight, _x.beep,) = _get_struct_6B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6B().pack(_x.position_light, _x.autopilot_light, _x.beacon, _x.headlight, _x.taillight, _x.beep))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.position_light, _x.autopilot_light, _x.beacon, _x.headlight, _x.taillight, _x.beep,) = _get_struct_6B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6B = None
def _get_struct_6B():
    global _struct_6B
    if _struct_6B is None:
        _struct_6B = struct.Struct("<6B")
    return _struct_6B
